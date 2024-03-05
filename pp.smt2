(set-logic QF_LIRA)
(declare-const x Int)
(declare-const y Int)
(declare-const z Int)
(declare-const w Int)
(declare-const zz Int)

(assert (> x 20))
(assert (> y 21))
(assert (> z 22))
(assert (> w 23))
(assert (< (+ zz y) 100))
(assert (< (+ y z) 100))
(assert (< (+ (* x 50) z) (+ (* 2 y) 100)))



(check-sat)
(exit)