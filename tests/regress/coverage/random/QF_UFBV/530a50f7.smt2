(set-info :source |fuzzsmt|)
(set-info :smt-lib-version 2.0)
(set-info :category "random")
(set-info :status unknown)
(set-logic QF_UFBV)
(declare-fun f0 ( (_ BitVec 12)) (_ BitVec 4))
(declare-fun p0 ( (_ BitVec 14)) Bool)
(declare-fun v0 () (_ BitVec 12))
(declare-fun v1 () (_ BitVec 3))
(declare-fun v2 () (_ BitVec 11))
(declare-fun v3 () (_ BitVec 9))
(assert (let ((e4(_ bv4085 12)))
(let ((e5(_ bv1130 12)))
(let ((e6 (ite (p0 ((_ zero_extend 5) v3)) (_ bv1 1) (_ bv0 1))))
(let ((e7 (f0 e4)))
(let ((e8 (bvadd ((_ sign_extend 3) v3) e4)))
(let ((e9 (bvudiv ((_ zero_extend 8) e7) e5)))
(let ((e10 (ite (= ((_ zero_extend 8) e7) e4) (_ bv1 1) (_ bv0 1))))
(let ((e11 ((_ rotate_right 0) e6)))
(let ((e12 (bvshl e4 ((_ sign_extend 1) v2))))
(let ((e13 (bvashr e8 v0)))
(let ((e14 (bvxor e9 ((_ sign_extend 11) e6))))
(let ((e15 (bvor e9 e9)))
(let ((e16 (bvshl e4 e15)))
(let ((e17 (bvxor e5 ((_ sign_extend 1) v2))))
(let ((e18 (bvsdiv e12 e17)))
(let ((e19 (bvxnor e14 ((_ sign_extend 11) e6))))
(let ((e20 (bvxor e17 e14)))
(let ((e21 (bvsdiv e17 e8)))
(let ((e22 (ite (= (_ bv1 1) ((_ extract 0 0) e6)) e18 e4)))
(let ((e23 (bvneg e13)))
(let ((e24 (bvxnor e19 v0)))
(let ((e25 (ite (bvsge e5 e21) (_ bv1 1) (_ bv0 1))))
(let ((e26 (bvnot e17)))
(let ((e27 (ite (distinct e8 ((_ sign_extend 11) e25)) (_ bv1 1) (_ bv0 1))))
(let ((e28 (bvmul e26 e14)))
(let ((e29 (bvurem e10 e27)))
(let ((e30 (ite (bvslt e4 e8) (_ bv1 1) (_ bv0 1))))
(let ((e31 (bvmul e28 e26)))
(let ((e32 (bvsub e28 e18)))
(let ((e33 (ite (bvsle e21 ((_ zero_extend 11) e30)) (_ bv1 1) (_ bv0 1))))
(let ((e34 (ite (distinct ((_ sign_extend 11) e6) e26) (_ bv1 1) (_ bv0 1))))
(let ((e35 (ite (p0 ((_ sign_extend 2) e18)) (_ bv1 1) (_ bv0 1))))
(let ((e36 (bvor e7 ((_ sign_extend 3) e30))))
(let ((e37 ((_ rotate_right 2) e24)))
(let ((e38 ((_ zero_extend 1) e22)))
(let ((e39 (bvurem ((_ zero_extend 11) e27) e37)))
(let ((e40 (bvudiv ((_ zero_extend 11) e11) e22)))
(let ((e41 (ite (bvuge e18 v0) (_ bv1 1) (_ bv0 1))))
(let ((e42 (ite (= (_ bv1 1) ((_ extract 0 0) e7)) ((_ zero_extend 11) e41) e8)))
(let ((e43 (ite (bvsge ((_ sign_extend 11) e30) e31) (_ bv1 1) (_ bv0 1))))
(let ((e44 (ite (bvslt e31 e5) (_ bv1 1) (_ bv0 1))))
(let ((e45 ((_ zero_extend 2) e44)))
(let ((e46 (ite (bvsle e9 e19) (_ bv1 1) (_ bv0 1))))
(let ((e47 (bvxor ((_ zero_extend 11) e35) e14)))
(let ((e48 (ite (bvslt e23 ((_ sign_extend 11) e11)) (_ bv1 1) (_ bv0 1))))
(let ((e49 ((_ zero_extend 2) e13)))
(let ((e50 (ite (bvule ((_ sign_extend 9) v1) e40) (_ bv1 1) (_ bv0 1))))
(let ((e51 (p0 ((_ sign_extend 11) v1))))
(let ((e52 (bvslt e49 ((_ zero_extend 2) e22))))
(let ((e53 (bvuge e4 e37)))
(let ((e54 (bvsgt ((_ sign_extend 11) e11) e12)))
(let ((e55 (= ((_ sign_extend 3) e33) e7)))
(let ((e56 (bvuge ((_ zero_extend 8) e35) v3)))
(let ((e57 (bvult ((_ sign_extend 1) e23) e38)))
(let ((e58 (= e17 e24)))
(let ((e59 (p0 ((_ sign_extend 2) e23))))
(let ((e60 (distinct e34 e27)))
(let ((e61 (bvult v0 ((_ zero_extend 11) e50))))
(let ((e62 (bvsgt v0 e21)))
(let ((e63 (bvsle e26 e4)))
(let ((e64 (bvsgt ((_ zero_extend 11) e50) e24)))
(let ((e65 (bvslt e40 e32)))
(let ((e66 (bvule e5 e5)))
(let ((e67 (bvugt e20 e9)))
(let ((e68 (bvsle ((_ zero_extend 3) e50) e36)))
(let ((e69 (bvsgt e31 e40)))
(let ((e70 (bvult e8 ((_ sign_extend 11) e10))))
(let ((e71 (= e39 ((_ zero_extend 11) e44))))
(let ((e72 (bvugt e32 e15)))
(let ((e73 (= ((_ sign_extend 11) e33) e5)))
(let ((e74 (p0 ((_ sign_extend 2) e13))))
(let ((e75 (bvult e48 e11)))
(let ((e76 (p0 ((_ sign_extend 2) e13))))
(let ((e77 (bvult ((_ zero_extend 3) e6) e7)))
(let ((e78 (bvule ((_ sign_extend 11) e35) e4)))
(let ((e79 (bvule e19 e37)))
(let ((e80 (bvsle e17 ((_ zero_extend 11) e6))))
(let ((e81 (bvuge ((_ zero_extend 11) e11) e32)))
(let ((e82 (bvsle e19 ((_ zero_extend 11) e35))))
(let ((e83 (bvuge ((_ sign_extend 11) e41) e5)))
(let ((e84 (bvule e5 e16)))
(let ((e85 (bvsgt ((_ zero_extend 11) e35) e26)))
(let ((e86 (= ((_ sign_extend 11) e10) v0)))
(let ((e87 (bvule e22 ((_ sign_extend 3) v3))))
(let ((e88 (bvuge e11 e35)))
(let ((e89 (bvule e4 ((_ zero_extend 8) e7))))
(let ((e90 (p0 e49)))
(let ((e91 (p0 ((_ zero_extend 2) e5))))
(let ((e92 (bvsge e14 ((_ sign_extend 11) e30))))
(let ((e93 (bvugt ((_ sign_extend 2) e25) v1)))
(let ((e94 (bvuge ((_ sign_extend 9) v1) e24)))
(let ((e95 (distinct e19 ((_ sign_extend 11) e27))))
(let ((e96 (bvslt ((_ zero_extend 11) e44) e13)))
(let ((e97 (bvsge e37 e37)))
(let ((e98 (bvule e5 e37)))
(let ((e99 (bvsle e37 e14)))
(let ((e100 (bvule ((_ zero_extend 13) e33) e49)))
(let ((e101 (bvule ((_ zero_extend 12) e29) e38)))
(let ((e102 (bvult e42 ((_ sign_extend 11) e30))))
(let ((e103 (bvuge e12 e5)))
(let ((e104 (bvule v0 e16)))
(let ((e105 (p0 ((_ sign_extend 13) e50))))
(let ((e106 (bvsle e26 e15)))
(let ((e107 (= e20 ((_ zero_extend 8) e7))))
(let ((e108 (p0 ((_ zero_extend 2) e39))))
(let ((e109 (bvslt e32 ((_ sign_extend 11) e29))))
(let ((e110 (bvuge e13 ((_ sign_extend 11) e50))))
(let ((e111 (bvsgt ((_ sign_extend 11) e44) e13)))
(let ((e112 (distinct e15 e21)))
(let ((e113 (bvslt e23 ((_ zero_extend 9) e45))))
(let ((e114 (distinct ((_ sign_extend 11) e46) e13)))
(let ((e115 (bvsgt e14 e37)))
(let ((e116 (bvugt ((_ zero_extend 11) e10) e19)))
(let ((e117 (p0 ((_ zero_extend 13) e46))))
(let ((e118 (bvule e9 ((_ zero_extend 11) e11))))
(let ((e119 (bvsgt e29 e34)))
(let ((e120 (bvsle ((_ sign_extend 11) e35) e4)))
(let ((e121 (p0 ((_ sign_extend 13) e34))))
(let ((e122 (bvule e17 ((_ sign_extend 11) e27))))
(let ((e123 (bvsle e13 e26)))
(let ((e124 (bvsle e9 e15)))
(let ((e125 (bvsge e4 e13)))
(let ((e126 (bvult ((_ sign_extend 13) e30) e49)))
(let ((e127 (bvule e38 ((_ sign_extend 1) e20))))
(let ((e128 (bvugt e17 ((_ sign_extend 11) e43))))
(let ((e129 (bvult e5 e15)))
(let ((e130 (p0 ((_ zero_extend 2) e28))))
(let ((e131 (bvslt ((_ zero_extend 11) e48) e42)))
(let ((e132 (bvsge e14 e20)))
(let ((e133 (bvult e42 e37)))
(let ((e134 (bvule e6 e30)))
(let ((e135 (bvsgt ((_ sign_extend 2) e25) v1)))
(let ((e136 (p0 ((_ zero_extend 2) e32))))
(let ((e137 (bvult e15 ((_ zero_extend 11) e29))))
(let ((e138 (bvsle e44 e34)))
(let ((e139 (bvsge ((_ zero_extend 2) e43) e45)))
(let ((e140 (bvsgt ((_ sign_extend 11) e43) e9)))
(let ((e141 (bvuge e29 e44)))
(let ((e142 (bvsle e20 e18)))
(let ((e143 (bvsge e38 ((_ sign_extend 12) e25))))
(let ((e144 (bvugt ((_ zero_extend 11) e11) e17)))
(let ((e145 (bvsgt e21 e40)))
(let ((e146 (= v0 ((_ sign_extend 11) e10))))
(let ((e147 (bvule e26 e16)))
(let ((e148 (bvugt e26 e39)))
(let ((e149 (bvsle e8 e22)))
(let ((e150 (bvsge ((_ sign_extend 1) v2) e18)))
(let ((e151 (bvslt e37 ((_ zero_extend 11) e35))))
(let ((e152 (bvsge e31 ((_ zero_extend 11) e10))))
(let ((e153 (bvsge e5 ((_ sign_extend 3) v3))))
(let ((e154 (bvsgt e12 e22)))
(let ((e155 (bvuge e39 e18)))
(let ((e156 (bvuge e28 ((_ zero_extend 11) e43))))
(let ((e157 (= e29 e46)))
(let ((e158 (bvsge e45 ((_ sign_extend 2) e44))))
(let ((e159 (bvsle ((_ sign_extend 11) e25) e39)))
(let ((e160 (bvugt ((_ zero_extend 8) e7) e28)))
(let ((e161 (bvuge ((_ sign_extend 8) e33) v3)))
(let ((e162 (bvsge ((_ zero_extend 3) v3) e9)))
(let ((e163 (bvsle e37 ((_ sign_extend 3) v3))))
(let ((e164 (bvuge e24 e5)))
(let ((e165 (bvslt ((_ sign_extend 8) e43) v3)))
(let ((e166 (bvuge e12 e32)))
(let ((e167 (bvugt e17 v0)))
(let ((e168 (bvule e26 ((_ zero_extend 11) e6))))
(let ((e169 (bvuge e8 ((_ zero_extend 1) v2))))
(let ((e170 (bvule e22 e4)))
(let ((e171 (bvuge e28 v0)))
(let ((e172 (bvugt ((_ sign_extend 8) e36) e39)))
(let ((e173 (p0 ((_ sign_extend 2) e18))))
(let ((e174 (bvsgt e28 ((_ zero_extend 3) v3))))
(let ((e175 (bvult ((_ zero_extend 1) e26) e38)))
(let ((e176 (bvsge ((_ sign_extend 11) e11) e37)))
(let ((e177 (bvuge v0 ((_ sign_extend 9) e45))))
(let ((e178 (bvult e49 ((_ sign_extend 13) e35))))
(let ((e179 (= ((_ zero_extend 11) e46) e15)))
(let ((e180 (bvsle ((_ sign_extend 8) e36) e42)))
(let ((e181 (bvsge ((_ zero_extend 11) e29) e13)))
(let ((e182 (= ((_ sign_extend 11) e10) e40)))
(let ((e183 (p0 ((_ sign_extend 11) v1))))
(let ((e184 (distinct v0 ((_ sign_extend 11) e10))))
(let ((e185 (bvsle ((_ sign_extend 11) e48) e42)))
(let ((e186 (bvule e26 e4)))
(let ((e187 (bvsle ((_ zero_extend 10) e48) v2)))
(let ((e188 (distinct ((_ sign_extend 1) e4) e38)))
(let ((e189 (p0 ((_ sign_extend 13) e11))))
(let ((e190 (bvult e28 ((_ sign_extend 8) e7))))
(let ((e191 (bvsge e41 e30)))
(let ((e192 (p0 ((_ zero_extend 13) e10))))
(let ((e193 (bvsle ((_ zero_extend 11) e6) e5)))
(let ((e194 (bvugt ((_ sign_extend 9) v1) e28)))
(let ((e195 (bvsge ((_ zero_extend 11) e6) e21)))
(let ((e196 (bvugt e47 ((_ zero_extend 9) e45))))
(let ((e197 (ite e67 e188 e150)))
(let ((e198 (or e125 e134)))
(let ((e199 (ite e182 e184 e123)))
(let ((e200 (= e103 e133)))
(let ((e201 (xor e94 e112)))
(let ((e202 (xor e53 e177)))
(let ((e203 (ite e79 e91 e185)))
(let ((e204 (not e124)))
(let ((e205 (xor e204 e97)))
(let ((e206 (xor e178 e192)))
(let ((e207 (and e190 e65)))
(let ((e208 (not e106)))
(let ((e209 (ite e136 e145 e83)))
(let ((e210 (and e127 e138)))
(let ((e211 (and e162 e108)))
(let ((e212 (and e169 e169)))
(let ((e213 (= e142 e141)))
(let ((e214 (ite e95 e175 e179)))
(let ((e215 (= e60 e161)))
(let ((e216 (and e73 e151)))
(let ((e217 (and e206 e55)))
(let ((e218 (or e187 e114)))
(let ((e219 (or e198 e122)))
(let ((e220 (not e111)))
(let ((e221 (xor e157 e129)))
(let ((e222 (and e208 e166)))
(let ((e223 (not e180)))
(let ((e224 (= e216 e104)))
(let ((e225 (not e222)))
(let ((e226 (and e140 e68)))
(let ((e227 (=> e137 e211)))
(let ((e228 (=> e149 e93)))
(let ((e229 (ite e132 e168 e196)))
(let ((e230 (not e100)))
(let ((e231 (ite e51 e155 e62)))
(let ((e232 (=> e230 e226)))
(let ((e233 (ite e163 e174 e173)))
(let ((e234 (= e116 e81)))
(let ((e235 (or e72 e232)))
(let ((e236 (not e144)))
(let ((e237 (xor e152 e147)))
(let ((e238 (not e224)))
(let ((e239 (ite e160 e210 e234)))
(let ((e240 (or e189 e201)))
(let ((e241 (not e84)))
(let ((e242 (and e235 e120)))
(let ((e243 (= e242 e76)))
(let ((e244 (xor e233 e243)))
(let ((e245 (not e214)))
(let ((e246 (= e225 e195)))
(let ((e247 (or e70 e102)))
(let ((e248 (and e59 e101)))
(let ((e249 (xor e146 e228)))
(let ((e250 (= e176 e78)))
(let ((e251 (xor e245 e117)))
(let ((e252 (xor e143 e107)))
(let ((e253 (xor e220 e223)))
(let ((e254 (ite e80 e71 e89)))
(let ((e255 (= e252 e205)))
(let ((e256 (=> e253 e92)))
(let ((e257 (= e240 e98)))
(let ((e258 (or e172 e246)))
(let ((e259 (or e250 e209)))
(let ((e260 (and e85 e69)))
(let ((e261 (not e231)))
(let ((e262 (=> e241 e109)))
(let ((e263 (or e156 e183)))
(let ((e264 (and e257 e218)))
(let ((e265 (= e154 e113)))
(let ((e266 (or e212 e249)))
(let ((e267 (= e74 e96)))
(let ((e268 (xor e86 e254)))
(let ((e269 (and e165 e139)))
(let ((e270 (xor e118 e213)))
(let ((e271 (ite e197 e126 e87)))
(let ((e272 (xor e199 e203)))
(let ((e273 (or e191 e221)))
(let ((e274 (not e56)))
(let ((e275 (=> e159 e267)))
(let ((e276 (ite e256 e66 e217)))
(let ((e277 (not e236)))
(let ((e278 (ite e82 e115 e202)))
(let ((e279 (and e121 e77)))
(let ((e280 (= e164 e167)))
(let ((e281 (=> e266 e88)))
(let ((e282 (or e181 e105)))
(let ((e283 (ite e265 e255 e248)))
(let ((e284 (or e153 e61)))
(let ((e285 (ite e277 e278 e247)))
(let ((e286 (not e229)))
(let ((e287 (xor e170 e219)))
(let ((e288 (not e244)))
(let ((e289 (=> e272 e284)))
(let ((e290 (=> e128 e128)))
(let ((e291 (and e276 e289)))
(let ((e292 (=> e260 e215)))
(let ((e293 (or e131 e193)))
(let ((e294 (or e262 e291)))
(let ((e295 (ite e258 e275 e288)))
(let ((e296 (=> e282 e135)))
(let ((e297 (xor e239 e259)))
(let ((e298 (or e295 e52)))
(let ((e299 (xor e273 e298)))
(let ((e300 (= e207 e296)))
(let ((e301 (= e287 e99)))
(let ((e302 (not e293)))
(let ((e303 (or e261 e200)))
(let ((e304 (=> e158 e270)))
(let ((e305 (and e63 e285)))
(let ((e306 (and e305 e110)))
(let ((e307 (ite e292 e130 e286)))
(let ((e308 (=> e299 e251)))
(let ((e309 (xor e280 e264)))
(let ((e310 (= e58 e238)))
(let ((e311 (ite e186 e64 e310)))
(let ((e312 (= e307 e227)))
(let ((e313 (not e309)))
(let ((e314 (xor e311 e311)))
(let ((e315 (not e313)))
(let ((e316 (or e314 e263)))
(let ((e317 (or e119 e281)))
(let ((e318 (=> e194 e279)))
(let ((e319 (xor e294 e315)))
(let ((e320 (and e306 e301)))
(let ((e321 (xor e312 e318)))
(let ((e322 (=> e274 e171)))
(let ((e323 (not e300)))
(let ((e324 (= e302 e322)))
(let ((e325 (= e237 e316)))
(let ((e326 (xor e317 e321)))
(let ((e327 (=> e271 e325)))
(let ((e328 (xor e320 e290)))
(let ((e329 (not e327)))
(let ((e330 (not e57)))
(let ((e331 (not e283)))
(let ((e332 (= e304 e329)))
(let ((e333 (=> e90 e332)))
(let ((e334 (and e331 e269)))
(let ((e335 (or e334 e297)))
(let ((e336 (and e323 e303)))
(let ((e337 (xor e336 e335)))
(let ((e338 (not e326)))
(let ((e339 (= e337 e148)))
(let ((e340 (= e333 e54)))
(let ((e341 (ite e75 e330 e338)))
(let ((e342 (xor e328 e324)))
(let ((e343 (ite e308 e340 e339)))
(let ((e344 (=> e343 e319)))
(let ((e345 (not e344)))
(let ((e346 (not e345)))
(let ((e347 (not e341)))
(let ((e348 (or e346 e268)))
(let ((e349 (=> e342 e342)))
(let ((e350 (xor e349 e347)))
(let ((e351 (or e350 e348)))
(let ((e352 (and e351 (not (= e27 (_ bv0 1))))))
(let ((e353 (and e352 (not (= e17 (_ bv0 12))))))
(let ((e354 (and e353 (not (= e17 (bvnot (_ bv0 12)))))))
(let ((e355 (and e354 (not (= e37 (_ bv0 12))))))
(let ((e356 (and e355 (not (= e8 (_ bv0 12))))))
(let ((e357 (and e356 (not (= e8 (bvnot (_ bv0 12)))))))
(let ((e358 (and e357 (not (= e5 (_ bv0 12))))))
(let ((e359 (and e358 (not (= e22 (_ bv0 12))))))
e359
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

(check-sat)