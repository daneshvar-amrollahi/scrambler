(set-logic QF_LIA)

(declare-const a Int)
(declare-const b Int)
(declare-const c Int)
(declare-const d Int)
(declare-const e Int)
(declare-const f Int)
(declare-const g Int)
(declare-const h Int)

(declare-fun add2 (Int Int) Int)
(declare-fun mul2 (Int Int) Int)
(declare-fun incr (Int) Int)

(assert (= (+ a b) (+ b a)))                ; Commutativity of addition
(assert (= (* c d) (* d c)))                ; Commutativity of multiplication
(assert (= (+ a (+ b c)) (+ (+ a 2) c)))    ; Associativity of addition
(assert (= (* a (* b c)) (* (* a b) c)))    ; Associativity of multiplication
(assert (= (+ a (* b c)) (+ (* b c) a)))    ; Addition and multiplication
(assert (= (* (+ a b) c) (+ (* a c) (* b c)))) ; Distributive property
(assert (= (* a (+ b c)) (+ (* a b) (* a c)))) ; Distributive property (reverse)
(assert (= (+ (+ a b) (+ c d)) (+ a (+ b (+ c d))))) ; Nested addition

(assert (= (add2 a b) (+ a b)))             ; Simple function adding two integers
(assert (= (mul2 c d) (* c d)))             ; Simple function multiplying two integers
(assert (= (incr e) (+ e 1)))               ; Increment function

(check-sat)
