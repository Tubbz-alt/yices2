(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_LIA)
(declare-fun v0 () Int)
(declare-fun v1 () Int)
(declare-fun v2 () Int)
(assert (let ((e3 0))
(let ((e4 (! (- v1 v2) :named term4)))
(let ((e5 (! (* (- e3) e4) :named term5)))
(let ((e6 (! (+ v0 v2) :named term6)))
(let ((e7 (! (<= v2 e4) :named term7)))
(let ((e8 (! (> e4 v0) :named term8)))
(let ((e9 (! (distinct v0 e5) :named term9)))
(let ((e10 (! (>= v0 v0) :named term10)))
(let ((e11 (! (< v1 e6) :named term11)))
(let ((e12 (! (ite e9 e5 v1) :named term12)))
(let ((e13 (! (ite e10 e6 v2) :named term13)))
(let ((e14 (! (ite e11 e4 v1) :named term14)))
(let ((e15 (! (ite e8 v0 v1) :named term15)))
(let ((e16 (! (ite e7 v0 e6) :named term16)))
(let ((e17 (! (> e5 v1) :named term17)))
(let ((e18 (! (< v2 e12) :named term18)))
(let ((e19 (! (<= v0 v2) :named term19)))
(let ((e20 (! (= v1 v0) :named term20)))
(let ((e21 (! (>= e16 e5) :named term21)))
(let ((e22 (! (= e15 v1) :named term22)))
(let ((e23 (! (>= v0 e14) :named term23)))
(let ((e24 (! (= e6 e5) :named term24)))
(let ((e25 (! (distinct e15 e15) :named term25)))
(let ((e26 (! (= v1 v1) :named term26)))
(let ((e27 (! (= v0 e12) :named term27)))
(let ((e28 (! (> v2 e13) :named term28)))
(let ((e29 (! (>= v1 e15) :named term29)))
(let ((e30 (! (<= v2 e5) :named term30)))
(let ((e31 (! (> v1 e12) :named term31)))
(let ((e32 (! (>= e4 e15) :named term32)))
(let ((e33 (! (=> e18 e23) :named term33)))
(let ((e34 (! (xor e28 e27) :named term34)))
(let ((e35 (! (xor e7 e20) :named term35)))
(let ((e36 (! (or e33 e11) :named term36)))
(let ((e37 (! (or e36 e30) :named term37)))
(let ((e38 (! (and e29 e10) :named term38)))
(let ((e39 (! (not e9) :named term39)))
(let ((e40 (! (or e31 e39) :named term40)))
(let ((e41 (! (and e32 e25) :named term41)))
(let ((e42 (! (or e38 e21) :named term42)))
(let ((e43 (! (=> e22 e41) :named term43)))
(let ((e44 (! (xor e8 e34) :named term44)))
(let ((e45 (! (not e35) :named term45)))
(let ((e46 (! (not e26) :named term46)))
(let ((e47 (! (or e44 e44) :named term47)))
(let ((e48 (! (= e42 e47) :named term48)))
(let ((e49 (! (xor e48 e37) :named term49)))
(let ((e50 (! (and e17 e45) :named term50)))
(let ((e51 (! (= e50 e49) :named term51)))
(let ((e52 (! (=> e51 e51) :named term52)))
(let ((e53 (! (ite e24 e19 e40) :named term53)))
(let ((e54 (! (ite e53 e53 e52) :named term54)))
(let ((e55 (! (and e43 e43) :named term55)))
(let ((e56 (! (= e55 e46) :named term56)))
(let ((e57 (! (not e54) :named term57)))
(let ((e58 (! (or e56 e57) :named term58)))
e58
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)
(set-option :regular-output-channel "/dev/null")
(get-model)
(get-value (term4))
(get-value (term5))
(get-value (term6))
(get-value (term7))
(get-value (term8))
(get-value (term9))
(get-value (term10))
(get-value (term11))
(get-value (term12))
(get-value (term13))
(get-value (term14))
(get-value (term15))
(get-value (term16))
(get-value (term17))
(get-value (term18))
(get-value (term19))
(get-value (term20))
(get-value (term21))
(get-value (term22))
(get-value (term23))
(get-value (term24))
(get-value (term25))
(get-value (term26))
(get-value (term27))
(get-value (term28))
(get-value (term29))
(get-value (term30))
(get-value (term31))
(get-value (term32))
(get-value (term33))
(get-value (term34))
(get-value (term35))
(get-value (term36))
(get-value (term37))
(get-value (term38))
(get-value (term39))
(get-value (term40))
(get-value (term41))
(get-value (term42))
(get-value (term43))
(get-value (term44))
(get-value (term45))
(get-value (term46))
(get-value (term47))
(get-value (term48))
(get-value (term49))
(get-value (term50))
(get-value (term51))
(get-value (term52))
(get-value (term53))
(get-value (term54))
(get-value (term55))
(get-value (term56))
(get-value (term57))
(get-value (term58))
(get-info :all-statistics)
