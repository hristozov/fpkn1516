(load "../../lib/scm/unit.scm")
(load "05accumulate.scm")
(load "06fact.scm")

(define (ex x)
  (define (term n)
    (/ (expt x n)
       (fact-accumulate n)))
  (accumulate 0 plus1 50 term + 0))

(assert-approx 20.085 0.001 (ex 3))
(assert-approx 2980.957 0.001 (ex 8))
