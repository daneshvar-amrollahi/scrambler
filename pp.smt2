(set-logic QF_LIRA)
(declare-const x Int)
(declare-const y Int)
(declare-const z Int)
(declare-const w Int)
(declare-const zz Int)

(assert (< (+ y z) 100))
(assert (> x 20))
(assert (< (+ zz y) 100))
(assert (> y 20))
(assert (< (+ (* x 50) z) (+ (* 2 y) 100)))



(check-sat)
(exit)