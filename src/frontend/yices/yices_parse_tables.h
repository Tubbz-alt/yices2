/*
 * This file is part of the Yices SMT Solver.
 * Copyright (C) 2017 SRI International.
 *
 * Yices is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Yices is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Yices.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Tables of actions for parsing the Yices language
 *
 * These tables are explained in utils/yices_parser.txt.
 * They are built by utils/table_builder using input file utils/yices_parser_tables.h
 */

#ifndef __YICES_PARSE_TABLES_H
#define __YICES_PARSE_TABLES_H

#include <stdint.h>


/*
 * States
 */
typedef enum state_s { */
  r0,
  c0, c1, c2, c3, c6, c7, c9, c10, c11, c12, c13,
  c14, c15, c16, c17, c18, c19, c20,
  td0, td1, td2, td3,
  t0, t1, t4, t6,
  e0, e1, e3, e5, e7, e10, e11, e12, e14, e15, e16, e17, e19, e20,
} state_t;


/*
 * Action codes
 */
typedef enum actions {
  next_goto_c1,
  empty_command,
  exit_next_goto_r0,
  check_next_goto_r0,
  check_assuming_next_goto_c16,
  push_next_goto_r0,
  pop_next_goto_r0,
  reset_next_goto_r0,
  dump_context_next_goto_r0,
  echo_next_goto_c3,
  include_next_goto_c3,
  assert_next_push_c20_goto_e0,
  deftype_next_goto_c2,
  defterm_next_goto_c6,
  showmodel_next_goto_r0,
  eval_next_push_r0_goto_e0,
  setparam_next_goto_c11,
  showparam_next_goto_c13,
  showparams_next_goto_r0,
  showstats_next_goto_r0,
  resetstats_next_goto_r0,
  showtimeout_next_goto_r0,
  settimeout_next_goto_c14,
  help_next_goto_c15,
  efsolve_next_goto_r0,    // New command: (ef-solve)
  export_next_goto_c3,     // New command: (export-to-dimacs filename)
  implicant_next_goto_r0,  // New command: (show-implicant)
  unsat_core_next_goto_r0, // (show-unsat-core)
  unsat_assumptions_next_goto_r0, // (show-unsat-assumptions)

  typename_next_goto_c10,  // token must be a free typename (TK_SYMBOL)
  string_next_goto_r0,     // string argument to echo, include, help, export
  termname_next_goto_c7,   // token must be a free termname (TK_SYMBOL)
  next_push_c9_goto_t0,
  symbol_next_goto_c12,    // in (set-param <symbol> ...)
  true_next_goto_r0,       // in (set-param ... true)
  false_next_goto_r0,      // in (set-param ... false)
  float_next_goto_r0,      // in (set-param ... <float>)
  symbol_next_goto_r0,     // in (show-param <symbol>) or (help <symbol>) or (set-param ... <symbol>)
  ret,                     // return
  push_r0_goto_e0,
  push_r0_goto_td0,

  symbol_next_goto_c16,    // positive assumption
  next_goto_c17,
  not_next_goto_c18,
  symbol_next_goto_c19,   // negated assumption
  next_goto_c16,

  int_return,
  real_return,
  bool_return,
  typesymbol_return,      // TK_SYMBOL bound to a type
  next_goto_td1,
  scalar_next_goto_td2,
  bitvector_next_goto_t4,
  tuple_next_push_t6_goto_t0,
  arrow_next_push_t6_push_t0_goto_t0,
  termname_next_goto_td3,  // free termane in scalar definition

  next_goto_t1,
  rational_next_goto_r0,
  push_t6_goto_t0,

  true_return,
  false_return,
  rational_return,
  float_return,
  bvbin_return,
  bvhex_return,
  termsymbol_return,     // TK_SYMBOL bound to a term
  next_goto_e1,

  // all function keywords
  if_next_push_e3_goto_e0,
  eq_next_push_e3_goto_e0,
  diseq_next_push_e3_goto_e0,
  distinct_next_push_e3_goto_e0,
  or_next_push_e3_goto_e0,
  and_next_push_e3_goto_e0,
  not_next_push_e3_goto_e0,
  xor_next_push_e3_goto_e0,
  iff_next_push_e3_goto_e0,
  implies_next_push_e3_goto_e0,
  mk_tuple_next_push_e3_goto_e0,
  select_next_push_e3_goto_e0,
  update_tuple_next_push_e3_goto_e0,
  add_next_push_e3_goto_e0,
  sub_next_push_e3_goto_e0,
  mul_next_push_e3_goto_e0,
  div_next_push_e3_goto_e0,
  pow_next_push_e3_goto_e0,
  lt_next_push_e3_goto_e0,
  le_next_push_e3_goto_e0,
  gt_next_push_e3_goto_e0,
  ge_next_push_e3_goto_e0,
  mk_bv_next_push_e3_goto_e0,
  bv_add_next_push_e3_goto_e0,
  bv_sub_next_push_e3_goto_e0,
  bv_mul_next_push_e3_goto_e0,
  bv_neg_next_push_e3_goto_e0,
  bv_pow_next_push_e3_goto_e0,
  bv_not_next_push_e3_goto_e0,
  bv_and_next_push_e3_goto_e0,
  bv_or_next_push_e3_goto_e0,
  bv_xor_next_push_e3_goto_e0,
  bv_nand_next_push_e3_goto_e0,
  bv_nor_next_push_e3_goto_e0,
  bv_xnor_next_push_e3_goto_e0,
  bv_shift_left0_next_push_e3_goto_e0,
  bv_shift_left1_next_push_e3_goto_e0,
  bv_shift_right0_next_push_e3_goto_e0,
  bv_shift_right1_next_push_e3_goto_e0,
  bv_ashift_right_next_push_e3_goto_e0,
  bv_rotate_left_next_push_e3_goto_e0,
  bv_rotate_right_next_push_e3_goto_e0,
  bv_extract_next_push_e3_goto_e0,
  bv_concat_next_push_e3_goto_e0,
  bv_repeat_next_push_e3_goto_e0,
  bv_sign_extend_next_push_e3_goto_e0,
  bv_zero_extend_next_push_e3_goto_e0,
  bv_ge_next_push_e3_goto_e0,
  bv_gt_next_push_e3_goto_e0,
  bv_le_next_push_e3_goto_e0,
  bv_lt_next_push_e3_goto_e0,
  bv_sge_next_push_e3_goto_e0,
  bv_sgt_next_push_e3_goto_e0,
  bv_sle_next_push_e3_goto_e0,
  bv_slt_next_push_e3_goto_e0,
  bv_shl_next_push_e3_goto_e0,
  bv_lshr_next_push_e3_goto_e0,
  bv_ashr_next_push_e3_goto_e0,
  bv_div_next_push_e3_goto_e0,
  bv_rem_next_push_e3_goto_e0,
  bv_sdiv_next_push_e3_goto_e0,
  bv_srem_next_push_e3_goto_e0,
  bv_smod_next_push_e3_goto_e0,
  bv_redor_next_push_e3_goto_e0,
  bv_redand_next_push_e3_goto_e0,
  bv_comp_next_push_e3_goto_e0,
  bool_to_bv_next_push_e3_goto_e0,
  bit_next_push_e3_goto_e0,
  floor_next_push_e3_goto_e0,
  ceil_next_push_e3_goto_e0,
  abs_next_push_e3_goto_e0,
  idiv_next_push_e3_goto_e0,
  mod_next_push_e3_goto_e0,
  divides_next_push_e3_goto_e0,
  is_int_next_push_e3_goto_e0,

  update_next_push_e5_goto_e0,
  forall_next_goto_e10,
  exists_next_goto_e10,
  lambda_next_goto_e10,
  let_next_goto_e15,
  push_e3_push_e0_goto_e0,

  push_e3_goto_e0,
  next_push_e7_goto_e0,
  next_push_r0_goto_e0,
  push_e7_goto_e0,
  next_goto_e11,
  e11_varname_next_goto_e12,       // first var decl in quantifiers
  next_push_e14_goto_t0,
  e14_varname_next_goto_e12,       // var decl in quantifier except the first one
  e14_next_push_r0_goto_e0,        // end of var decls

  next_goto_e16,
  next_goto_e17,
  termname_next_push_e19_goto_e0,  // name in binding
  next_goto_e20,

  error_lpar_expected,
  error_symbol_expected,
  error_string_expected,
  error_colon_colon_expected,
  error_rational_expected,
  error_rpar_expected,
  error_not_expected,
  error_not_a_command,
  error,
} action_t;


/*
 * Tables generated by table_builder
 * see utils/table_builder.c
 */

// Table sizes
#define NSTATES 41
#define BSIZE 325

// Default values for each state
static const uint8_t default_value[NSTATES] = {
  error_rpar_expected,
  error_lpar_expected,
  error,
  error_symbol_expected,
  error_string_expected,
  error_symbol_expected,
  error_colon_colon_expected,
  push_r0_goto_e0,
  push_r0_goto_td0,
  error_symbol_expected,
  error,
  error,
  error,
  error,
  error,
  error_not_expected,
  error_symbol_expected,
  error_rpar_expected,
  error,
  error,
  error,
  error_symbol_expected,
  error,
  error,
  error,
  error_rational_expected,
  push_t6_goto_t0,
  error,
  push_e3_push_e0_goto_e0,
  push_e3_goto_e0,
  error_lpar_expected,
  push_e7_goto_e0,
  error_lpar_expected,
  error_symbol_expected,
  error_colon_colon_expected,
  error,
  error_lpar_expected,
  error_lpar_expected,
  error_symbol_expected,
  error_rpar_expected,
  error,
};

// Base values for each state
static const uint8_t base[NSTATES] = {
     0,   0,   0,   1,   0,   2,   0,   4,   5,   3,
     8,   6,   2,  59, 154,  33,   7,   7, 155, 157,
     5,  13, 161, 165,  49,  18,  23, 173, 188,  60,
    66,  66, 158, 150, 158, 187, 161, 171, 163, 188,
   192,
};

// Check table
static const uint8_t check[BSIZE] = {
     2,   2,   2,   2,   2,   2,   2,   2,   2,   2,
     2,   2,   2,   2,   2,   2,   2,   2,   2,   2,
     2,   2,   2,   2,   2,   2,   2,  41,  41,  41,
    41,  41,   1,   0,   6,   1,   4,   7,   8,  12,
    17,   2,   3,   5,   9,  10,  10,  11,  16,  10,
    20,  20,  20,  20,  21,  25,  26,  10,  10,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  15,  13,  29,  24,  13,  24,  24,  30,  31,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  13,  14,  14,  18,  19,
    32,  33,  34,  36,  22,  14,  18,  23,  19,  19,
    19,  19,  22,  37,  38,  27,  23,  23,  23,  23,
    27,  27,  27,  27,  27,  28,  28,  28,  28,  28,
    35,  39,  27,  27,  40,  40,  41,  41,  35,  41,
    41,  41,  41,  41,  41,  41,  41,  41,  41,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  28,  28,  28,  28,  28,
    28,  28,  28,  28,  28,  41,  41,  41,  41,  41,
    41,  41,  41,  41,  41,
};

// Value table
static const uint8_t value[BSIZE] = {
  deftype_next_goto_c2,
  defterm_next_goto_c6,
  assert_next_push_c20_goto_e0,
  check_next_goto_r0,
  check_assuming_next_goto_c16,
  push_next_goto_r0,
  pop_next_goto_r0,
  reset_next_goto_r0,
  dump_context_next_goto_r0,
  exit_next_goto_r0,
  echo_next_goto_c3,
  include_next_goto_c3,
  showmodel_next_goto_r0,
  eval_next_push_r0_goto_e0,
  setparam_next_goto_c11,
  showparam_next_goto_c13,
  showparams_next_goto_r0,
  showstats_next_goto_r0,
  resetstats_next_goto_r0,
  settimeout_next_goto_c14,
  showtimeout_next_goto_r0,
  help_next_goto_c15,
  efsolve_next_goto_r0,
  export_next_goto_c3,
  implicant_next_goto_r0,
  unsat_core_next_goto_r0,
  unsat_assumptions_next_goto_r0,
  error,
  error,
  error,
  error,
  error,
  next_goto_c1,
  ret,
  next_push_c9_goto_t0,
  empty_command,
  string_next_goto_r0,
  ret,
  ret,
  rational_next_goto_r0,
  next_goto_c16,
  error_not_a_command,
  typename_next_goto_c10,
  termname_next_goto_c7,
  symbol_next_goto_c12,
  rational_next_goto_r0,
  float_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_c19,
  symbol_next_goto_r0,
  bitvector_next_goto_t4,
  scalar_next_goto_td2,
  tuple_next_push_t6_goto_t0,
  arrow_next_push_t6_push_t0_goto_t0,
  termname_next_goto_td3,
  rational_next_goto_r0,
  ret,
  true_next_goto_r0,
  false_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  not_next_goto_c18,
  ret,
  ret,
  bitvector_next_goto_t4,
  string_next_goto_r0,
  tuple_next_push_t6_goto_t0,
  arrow_next_push_t6_push_t0_goto_t0,
  next_push_e7_goto_e0,
  next_push_r0_goto_e0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  symbol_next_goto_r0,
  next_goto_c17,
  ret,
  ret,
  next_goto_td1,
  next_goto_e11,
  e11_varname_next_goto_e12,
  next_push_e14_goto_t0,
  next_goto_e16,
  ret,
  symbol_next_goto_c16,
  symbol_next_goto_r0,
  next_goto_t1,
  typesymbol_return,
  bool_return,
  int_return,
  real_return,
  termname_next_goto_td3,
  next_goto_e17,
  termname_next_push_e19_goto_e0,
  next_goto_e1,
  typesymbol_return,
  bool_return,
  int_return,
  real_return,
  rational_return,
  float_return,
  bvbin_return,
  bvhex_return,
  termsymbol_return,
  update_next_push_e5_goto_e0,
  forall_next_goto_e10,
  exists_next_goto_e10,
  lambda_next_goto_e10,
  let_next_goto_e15,
  e14_next_push_r0_goto_e0,
  next_goto_e20,
  true_return,
  false_return,
  next_goto_e17,
  next_push_r0_goto_e0,
  error,
  error,
  e14_varname_next_goto_e12,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  if_next_push_e3_goto_e0,
  if_next_push_e3_goto_e0,
  eq_next_push_e3_goto_e0,
  diseq_next_push_e3_goto_e0,
  distinct_next_push_e3_goto_e0,
  or_next_push_e3_goto_e0,
  and_next_push_e3_goto_e0,
  not_next_push_e3_goto_e0,
  xor_next_push_e3_goto_e0,
  iff_next_push_e3_goto_e0,
  implies_next_push_e3_goto_e0,
  mk_tuple_next_push_e3_goto_e0,
  select_next_push_e3_goto_e0,
  update_tuple_next_push_e3_goto_e0,
  add_next_push_e3_goto_e0,
  sub_next_push_e3_goto_e0,
  mul_next_push_e3_goto_e0,
  div_next_push_e3_goto_e0,
  pow_next_push_e3_goto_e0,
  lt_next_push_e3_goto_e0,
  le_next_push_e3_goto_e0,
  gt_next_push_e3_goto_e0,
  ge_next_push_e3_goto_e0,
  mk_bv_next_push_e3_goto_e0,
  bv_add_next_push_e3_goto_e0,
  bv_sub_next_push_e3_goto_e0,
  bv_mul_next_push_e3_goto_e0,
  bv_neg_next_push_e3_goto_e0,
  bv_pow_next_push_e3_goto_e0,
  bv_not_next_push_e3_goto_e0,
  bv_and_next_push_e3_goto_e0,
  bv_or_next_push_e3_goto_e0,
  bv_xor_next_push_e3_goto_e0,
  bv_nand_next_push_e3_goto_e0,
  bv_nor_next_push_e3_goto_e0,
  bv_xnor_next_push_e3_goto_e0,
  bv_shift_left0_next_push_e3_goto_e0,
  bv_shift_left1_next_push_e3_goto_e0,
  bv_shift_right0_next_push_e3_goto_e0,
  bv_shift_right1_next_push_e3_goto_e0,
  bv_ashift_right_next_push_e3_goto_e0,
  bv_rotate_left_next_push_e3_goto_e0,
  bv_rotate_right_next_push_e3_goto_e0,
  bv_extract_next_push_e3_goto_e0,
  bv_concat_next_push_e3_goto_e0,
  bv_repeat_next_push_e3_goto_e0,
  bv_sign_extend_next_push_e3_goto_e0,
  bv_zero_extend_next_push_e3_goto_e0,
  bv_ge_next_push_e3_goto_e0,
  bv_gt_next_push_e3_goto_e0,
  bv_le_next_push_e3_goto_e0,
  bv_lt_next_push_e3_goto_e0,
  bv_sge_next_push_e3_goto_e0,
  bv_sgt_next_push_e3_goto_e0,
  bv_sle_next_push_e3_goto_e0,
  bv_slt_next_push_e3_goto_e0,
  bv_shl_next_push_e3_goto_e0,
  bv_lshr_next_push_e3_goto_e0,
  bv_ashr_next_push_e3_goto_e0,
  bv_div_next_push_e3_goto_e0,
  bv_rem_next_push_e3_goto_e0,
  bv_sdiv_next_push_e3_goto_e0,
  bv_srem_next_push_e3_goto_e0,
  bv_smod_next_push_e3_goto_e0,
  bv_redor_next_push_e3_goto_e0,
  bv_redand_next_push_e3_goto_e0,
  bv_comp_next_push_e3_goto_e0,
  bool_to_bv_next_push_e3_goto_e0,
  bit_next_push_e3_goto_e0,
  floor_next_push_e3_goto_e0,
  ceil_next_push_e3_goto_e0,
  abs_next_push_e3_goto_e0,
  idiv_next_push_e3_goto_e0,
  mod_next_push_e3_goto_e0,
  divides_next_push_e3_goto_e0,
  is_int_next_push_e3_goto_e0,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
  error,
};


#endif /* __YICES_PARSE_TABLES_H */
