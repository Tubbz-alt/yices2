(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_LIA)
(declare-fun v0 () Int)
(assert (let ((e1 10))
(let ((e2 (* v0 e1)))
(let ((e3 (> v0 e2)))
(let ((e4 (ite e3 v0 e2)))
(let ((e5 (= e4 e2)))
(let ((e6 (> e4 e2)))
(let ((e7 (distinct e2 v0)))
(let ((e8 (ite e7 e5 e5)))
(let ((e9 (=> e3 e8)))
(let ((e10 (and e9 e6)))
e10
)))))))))))

(check-sat)
