(set-logic LRA)
(set-info :source |
These benchmarks used in the paper:

  Dejan Jovanovic and Leonardo de Moura.  Solving Non-Linear Arithmetic.
  In IJCAR 2012, published as LNCS volume 7364, pp. 339--354.

The keymaera family contains VCs from Keymaera verification, see:

  A. Platzer, J.-D. Quesel, and P. Rummer.  Real world verification.
  In CADE 2009, pages 485-501. Springer, 2009.

Submitted by Dejan Jovanovic for SMT-LIB.

 KeYmaera example: water_tank, node 22289 For more info see: No further information available.
|)
(set-info :smt-lib-version 2.0)
(set-info :category "industrial")
(set-info :status unsat)
(declare-fun ts24uscore3 () Real)
(declare-fun xuscore2dollarskuscore36 () Real)
(declare-fun yuscore2dollarskuscore44 () Real)
(declare-fun stuscore2dollarskuscore44 () Real)
(declare-fun t24uscore0dollarskuscore3 () Real)
(assert (not (exists ((ts24uscore3 Real)) (=> (and (and (and (and (and (and (and (and (= stuscore2dollarskuscore44 1) (=> (and (<= 0 ts24uscore3) (<= ts24uscore3 t24uscore0dollarskuscore3)) (<= (+ ts24uscore3 yuscore2dollarskuscore44) 10))) (>= t24uscore0dollarskuscore3 0)) (< yuscore2dollarskuscore44 10)) (= stuscore2dollarskuscore44 0)) (>= yuscore2dollarskuscore44 1)) (<= yuscore2dollarskuscore44 12)) (>= yuscore2dollarskuscore44 (- 5 (* 2 xuscore2dollarskuscore36)))) (<= yuscore2dollarskuscore44 (+ 10 xuscore2dollarskuscore36))) (<= (+ t24uscore0dollarskuscore3 yuscore2dollarskuscore44) (+ 10 (+ t24uscore0dollarskuscore3 xuscore2dollarskuscore36)))))))
(check-sat)
(exit)
