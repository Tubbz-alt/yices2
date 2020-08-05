(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_LRA)
(declare-fun v0 () Real)
(declare-fun v1 () Real)
(declare-fun v2 () Real)
(assert (let ((e3 2))
(let ((e4 1))
(let ((e5 (- v2)))
(let ((e6 (- e5 v2)))
(let ((e7 (* e4 v1)))
(let ((e8 (+ e7 v0)))
(let ((e9 (+ v2 e7)))
(let ((e10 (* e6 (- e3))))
(let ((e11 (distinct e6 e6)))
(let ((e12 (>= e8 v2)))
(let ((e13 (distinct e5 v1)))
(let ((e14 (<= e10 e7)))
(let ((e15 (> v0 e9)))
(let ((e16 (distinct e10 e8)))
(let ((e17 (>= v0 v1)))
(let ((e18 (distinct e9 e5)))
(let ((e19 (< e6 e6)))
(let ((e20 (distinct v1 e6)))
(let ((e21 (< e5 e8)))
(let ((e22 (= e10 v1)))
(let ((e23 (> e5 e10)))
(let ((e24 (<= e6 e10)))
(let ((e25 (> e8 e5)))
(let ((e26 (>= e7 e8)))
(let ((e27 (<= e5 v2)))
(let ((e28 (ite e20 e23 e21)))
(let ((e29 (=> e17 e16)))
(let ((e30 (= e15 e22)))
(let ((e31 (=> e19 e18)))
(let ((e32 (and e11 e28)))
(let ((e33 (not e26)))
(let ((e34 (= e13 e24)))
(let ((e35 (ite e14 e27 e31)))
(let ((e36 (ite e35 e35 e32)))
(let ((e37 (ite e30 e29 e30)))
(let ((e38 (xor e34 e37)))
(let ((e39 (or e25 e33)))
(let ((e40 (= e38 e12)))
(let ((e41 (and e40 e40)))
(let ((e42 (= e36 e41)))
(let ((e43 (not e42)))
(let ((e44 (and e43 e39)))
e44
)))))))))))))))))))))))))))))))))))))))))))

;; CHECK: (assert (= v0 (/ 30 34)))
;; CHECK: (check-sat)
(check-sat-assuming-model (v0) ((/ 30 34)))