/*
 * PRETTY PRINTER FOR CONCRETE VALUES USING THE SMT2 SYNTAX
 */

#include <inttypes.h>

#include "type_printer.h"
#include "smt2_printer.h"


/*
 * Printing for each object type
 */
static inline void smt2_pp_bitvector(yices_pp_t *printer, value_bv_t *b) {
  pp_smt2_bv(printer, b->data, b->nbits);
}


/*
 * SMT2 format for integer and rational constants
 */

// side effect on q
static void smt2_pp_integer(yices_pp_t *printer, rational_t *q) {
  assert(q_is_integer(q));

  if (q_is_neg(q)) {
    q_neg(q); // flip the sign
    pp_open_block(printer, PP_OPEN_MINUS);
    pp_rational(printer, q);
    pp_close_block(printer, true);
  } else {
    pp_rational(printer, q);
  }
}

static void smt2_pp_rational(yices_pp_t *printer, rational_t *q) {
  rational_t num, den;

  q_init(&num);
  q_init(&den);
  q_get_num(&num, q); // numerator
  q_get_den(&den, q); // denominator

  assert(q_is_pos(&den) && q_is_integer(&den));
      
  if (q_is_one(&den)) {
    smt2_pp_integer(printer, &num);
  } else {
    pp_open_block(printer, PP_OPEN_DIV);
    smt2_pp_integer(printer, &num);
    pp_rational(printer, &den);
    pp_close_block(printer, true);
  }
  
  q_clear(&num);
  q_clear(&den);
}


/*
 * For uninterpreted constants: always print an abstract name
 */
static void smt2_pp_unint_name(yices_pp_t *printer, value_table_t *table, value_t c, value_unint_t *v) {    
  pp_id(printer, "@const_", c);
}


/*
 * Function: always use a default name, even if fun has a name
 */
static void smt2_pp_fun_name(yices_pp_t *printer, value_t c, value_fun_t *fun) {
  pp_id(printer, "@fun_", c);
}



/*
 * For updates: recursively print elements
 */
static void smt2_pp_update(yices_pp_t *printer, value_table_t *table, value_update_t *u) {
  value_map_t *m;
  uint32_t i, n;

  n = u->arity;
  assert(n > 0);

  m = vtbl_map(table, u->map);
  assert(m->arity == n);

  pp_open_block(printer, PP_OPEN_UPDATE);
  smt2_pp_object(printer, table, u->fun);
  pp_open_block(printer, PP_OPEN_PAR);
  for (i=0; i<n; i++) {
    smt2_pp_object(printer, table, m->arg[i]);
  }
  pp_close_block(printer, true);
  smt2_pp_object(printer, table, m->val);
  pp_close_block(printer, true);
}



/*
 * Print object c on stream f
 *
 * There's no support for tuples or mappings in SMT2. They should never occur here.
 */
void smt2_pp_object(yices_pp_t *printer, value_table_t *table, value_t c) {  
  assert(0 <= c && c < table->nobjects);

  switch (table->kind[c]) {
  case UNKNOWN_VALUE:
    pp_string(printer, "???");
    break;
  case BOOLEAN_VALUE:
    pp_bool(printer, table->desc[c].integer);
    break;
  case RATIONAL_VALUE:
    smt2_pp_rational(printer, &table->desc[c].rational);
    break;
  case BITVECTOR_VALUE:
    smt2_pp_bitvector(printer, table->desc[c].ptr); 
    break;
  case UNINTERPRETED_VALUE:
    smt2_pp_unint_name(printer, table, c, table->desc[c].ptr);
    break;
  case FUNCTION_VALUE:
    smt2_pp_fun_name(printer, c, table->desc[c].ptr);
    break;
  case UPDATE_VALUE:
    smt2_pp_update(printer, table, table->desc[c].ptr);
    break;

  case MAP_VALUE:
  case TUPLE_VALUE:
  default:
    assert(false);
  }
}



/*
 * Format to display a function:
 * (function <name>
 *   (type (-> tau_1 ... tau_n sigma))
 *   (= (<name> x_1 ... x_n) y_1)
 *    ...
 *   (default z))
 */
static void smt2_pp_function_header(yices_pp_t *printer, value_table_t *table, value_t c, type_t tau, const char *name) {
  pp_open_block(printer, PP_OPEN_FUNCTION);
  if (name == NULL) {
    pp_id(printer, "@fun_", c);
  } else {
    pp_string(printer, name);
  }
  pp_open_block(printer, PP_OPEN_TYPE);
  pp_type(printer, table->type_table, tau);
  pp_close_block(printer, true);
}
 

/*
 * Print the function c
 * - if show_default is true, also print the default falue
 */
void smt2_pp_function(yices_pp_t *printer, value_table_t *table, value_t c, bool show_default) {
  value_fun_t *fun;
  value_map_t *mp;
  uint32_t i, n;
  uint32_t j, m;

  assert(0 <= c && c < table->nobjects && table->kind[c] == FUNCTION_VALUE);
  fun = table->desc[c].ptr;

  smt2_pp_function_header(printer, table, c, fun->type, fun->name);

  m = fun->arity;
  n = fun->map_size;
  for (i=0; i<n; i++) {
    pp_open_block(printer, PP_OPEN_EQ);  // (=
    pp_open_block(printer, PP_OPEN_PAR); // (fun
    smt2_pp_fun_name(printer, c, fun);

    mp = vtbl_map(table, fun->map[i]);
    assert(mp->arity == m);
    for (j=0; j<m; j++) {
      smt2_pp_object(printer, table, mp->arg[j]);
    }
    pp_close_block(printer, true); // close of (fun ...
    smt2_pp_object(printer, table, mp->val);
    pp_close_block(printer, true); // close (= ..
  }

  if (show_default && !is_unknown(table, fun->def)) {
    pp_open_block(printer, PP_OPEN_DEFAULT); // (default
    smt2_pp_object(printer, table, fun->def);
    pp_close_block(printer, true); // close (default ..
  }
  pp_close_block(printer, true); // close (function ...
}


/*
 * Expand update c and print it as a function
 * - name = function name to use
 * - if name is NULL, replace it by "@fun_c"
 * - if show_default is true, also print the default value
 */
void smt2_normalize_and_pp_update(yices_pp_t *printer, value_table_t *table, char *name, value_t c, bool show_default) {
  char fake_name[20];
  map_hset_t *hset;
  value_map_t *mp;
  value_t def;
  type_t tau;
  uint32_t i, j, n, m;

  // build the mapping for c in hset1
  vtbl_expand_update(table, c, &def, &tau);
  hset = table->hset1;
  assert(hset != NULL);

  if (name == NULL) {
    sprintf(fake_name, "@fun_%"PRId32, c);
    name = fake_name;
  }

  smt2_pp_function_header(printer, table, c, tau, name);
  
  /*
   * hset->data contains an array of mapping objects
   * hset->nelems = number of elements in hset->data
   */
  m = vtbl_update(table, c)->arity;
  n = hset->nelems;
  for (i=0; i<n; i++) {
    pp_open_block(printer, PP_OPEN_EQ);
    pp_open_block(printer, PP_OPEN_PAR);
    pp_string(printer, name);

    mp = vtbl_map(table, hset->data[i]);
    assert(mp->arity == m);
    for (j=0; j<m; j++) {
      smt2_pp_object(printer, table, mp->arg[j]);
    }
    pp_close_block(printer, true); // close (name arg[0] ... arg[m-1])
    smt2_pp_object(printer, table, mp->val);
    pp_close_block(printer, true); // close (= 
  }

  if (show_default && !is_unknown(table, def)) {
    pp_open_block(printer, PP_OPEN_DEFAULT);
    smt2_pp_object(printer, table, def);
    pp_close_block(printer, true);
  }
  pp_close_block(printer, true);  // close the (function ... 
}



/*
 * Print the maps defining the anonymous functions
 * - i.e., all functions whose name is NULL
 * - if show_default is true, print the default value for each map
 */
void smt2_pp_anonymous_functions(yices_pp_t *printer, value_table_t *table, bool show_default) {
  value_fun_t *fun;
  uint32_t i, n;

  n = table->nobjects;
  for (i=0; i<n; i++) {
    if (object_is_function(table, i)) {
      fun = table->desc[i].ptr;
      if (fun->name == NULL) {
        smt2_pp_function(printer, table, i, show_default);
      }
    }   
  }
}



