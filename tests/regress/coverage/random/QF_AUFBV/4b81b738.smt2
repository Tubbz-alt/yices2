(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_AUFBV)
(declare-fun v0 () (_ BitVec 15))
(declare-fun a1 () (Array  (_ BitVec 8)  (_ BitVec 2)))
(assert (let ((e2(_ bv3 3)))
(let ((e3 (bvshl e2 e2)))
(let ((e4 (bvneg e2)))
(let ((e5 (ite (bvult ((_ sign_extend 12) e3) v0) (_ bv1 1) (_ bv0 1))))
(let ((e6 (store a1 ((_ zero_extend 5) e4) ((_ extract 2 1) e2))))
(let ((e7 (select a1 ((_ extract 14 7) v0))))
(let ((e8 (select e6 ((_ sign_extend 5) e3))))
(let ((e9 (store a1 ((_ sign_extend 5) e4) ((_ sign_extend 1) e5))))
(let ((e10 (select e6 ((_ sign_extend 7) e5))))
(let ((e11 (select a1 ((_ zero_extend 5) e2))))
(let ((e12 ((_ zero_extend 12) e3)))
(let ((e13 (bvxnor ((_ zero_extend 1) e7) e4)))
(let ((e14 (bvlshr ((_ sign_extend 1) e11) e2)))
(let ((e15 ((_ zero_extend 2) e10)))
(let ((e16 (bvurem ((_ zero_extend 12) e2) v0)))
(let ((e17 (ite (bvuge ((_ sign_extend 14) e5) e12) (_ bv1 1) (_ bv0 1))))
(let ((e18 (bvsrem ((_ zero_extend 3) e17) e15)))
(let ((e19 (bvnot e5)))
(let ((e20 (bvnand ((_ sign_extend 13) e8) v0)))
(let ((e21 (= e3 e3)))
(let ((e22 (bvult ((_ sign_extend 13) e11) e20)))
(let ((e23 (bvsle v0 ((_ zero_extend 14) e17))))
(let ((e24 (bvule ((_ zero_extend 1) e4) e15)))
(let ((e25 (bvslt e17 e19)))
(let ((e26 (bvugt e2 e13)))
(let ((e27 (bvuge ((_ zero_extend 1) e8) e3)))
(let ((e28 (bvslt e12 ((_ zero_extend 12) e2))))
(let ((e29 (bvult e10 e7)))
(let ((e30 (bvuge e11 e11)))
(let ((e31 (bvuge e4 e13)))
(let ((e32 (bvuge e15 ((_ sign_extend 1) e13))))
(let ((e33 (bvult e16 ((_ sign_extend 14) e5))))
(let ((e34 (bvslt e14 ((_ sign_extend 2) e19))))
(let ((e35 (distinct e3 e14)))
(let ((e36 (= e16 ((_ zero_extend 11) e18))))
(let ((e37 (or e25 e28)))
(let ((e38 (xor e33 e37)))
(let ((e39 (ite e24 e31 e32)))
(let ((e40 (not e36)))
(let ((e41 (xor e26 e39)))
(let ((e42 (and e41 e35)))
(let ((e43 (=> e27 e22)))
(let ((e44 (or e38 e21)))
(let ((e45 (and e44 e29)))
(let ((e46 (or e43 e45)))
(let ((e47 (xor e23 e30)))
(let ((e48 (= e42 e42)))
(let ((e49 (not e40)))
(let ((e50 (and e49 e49)))
(let ((e51 (xor e50 e34)))
(let ((e52 (=> e48 e47)))
(let ((e53 (ite e52 e52 e52)))
(let ((e54 (= e51 e51)))
(let ((e55 (=> e54 e53)))
(let ((e56 (xor e46 e55)))
(let ((e57 (and e56 (not (= v0 (_ bv0 15))))))
(let ((e58 (and e57 (not (= e15 (_ bv0 4))))))
(let ((e59 (and e58 (not (= e15 (bvnot (_ bv0 4)))))))
e59
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)