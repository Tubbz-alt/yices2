(set-logic QF_LIA)
(declare-fun x () Int)
(assert (>= x 0))
(assert (not (= x (abs x))))
(check-sat)