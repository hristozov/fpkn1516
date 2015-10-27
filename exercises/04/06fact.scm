(load "../../lib/scm/unit.scm")
(load "05accumulate.scm")

(define (fact-accumulate n)
  (accumulate 1 plus1 n identity * 1))

(assert= 1 (fact-accumulate 1))
(assert= 24 (fact-accumulate 4))
