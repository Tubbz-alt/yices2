(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_UF)
(declare-sort S0 0)
(declare-fun v0 () S0)
(declare-fun v1 () S0)
(declare-fun v2 () S0)
(declare-fun f0 ( S0) S0)
(declare-fun p0 ( S0) Bool)
(assert (let ((e3 (f0 v2)))
(let ((e4 (f0 v1)))
(let ((e5 (f0 v0)))
(let ((e6 (= e5 v2)))
(let ((e7 (p0 v2)))
(let ((e8 (distinct e3 e5)))
(let ((e9 (distinct v0 v1)))
(let ((e10 true))
(let ((e11 (= e4 v0)))
(let ((e12 (ite e7 e5 v0)))
(let ((e13 (ite e8 e4 v2)))
(let ((e14 (ite e6 v1 e3)))
(let ((e15 (ite e9 e3 v2)))
(let ((e16 (ite e10 v1 e13)))
(let ((e17 (ite e7 v1 e5)))
(let ((e18 (ite e11 v2 e16)))
(let ((e19 (p0 e13)))
(let ((e20 (= e5 e12)))
(let ((e21 (p0 e4)))
(let ((e22 (= v0 v0)))
(let ((e23 (p0 e16)))
(let ((e24 (p0 e16)))
(let ((e25 false))
(let ((e26 (p0 v0)))
(let ((e27 (= v2 e3)))
(let ((e28 true))
(let ((e29 (p0 v0)))
(let ((e30 (= e15 e4)))
(let ((e31 true))
(let ((e32 (p0 e14)))
(let ((e33 (p0 e16)))
(let ((e34 (p0 v0)))
(let ((e35 true))
(let ((e36 (distinct e18 e3)))
(let ((e37 true))
(let ((e38 (not e19)))
(let ((e39 (xor e22 e21)))
(let ((e40 true))
(let ((e41 (= e32 e24)))
(let ((e42 (ite false e6 e41)))
(let ((e43 (and e36 e34)))
(let ((e44 true))
(let ((e45 (not e43)))
(let ((e46 (not e10)))
(let ((e47 (and e42 e33)))
(let ((e48 (=> e45 e26)))
(let ((e49 false))
(let ((e50 (not e20)))
(let ((e51 (ite e47 e50 e39)))
(let ((e52 false))
(let ((e53 (=> e27 e37)))
(let ((e54 (or e38 e38)))
(let ((e55 (not e8)))
(let ((e56 (and e55 e29)))
(let ((e57 (ite e51 e35 e49)))
(let ((e58 (xor e57 e48)))
(let ((e59 (or e58 e56)))
(let ((e60 (=> e54 e52)))
(let ((e61 (or e30 e30)))
(let ((e62 (xor e59 e60)))
(let ((e63 true))
(let ((e64 (xor e9 e61)))
(let ((e65 (xor e63 e64)))
(let ((e66 (and e65 e65)))
(let ((e67 (=> e53 e62)))
(let ((e68 (= e67 e66)))
e68
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)