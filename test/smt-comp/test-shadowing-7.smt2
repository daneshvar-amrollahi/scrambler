(set-logic ALL)
(set-info :status sat)
(push 1)
(declare-fun x () Bool)
(assert x)
(check-sat)
(pop 1)
(declare-fun x () Bool)
(assert x)
(check-sat)
(exit)
