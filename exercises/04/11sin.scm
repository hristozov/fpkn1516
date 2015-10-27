(load "../../lib/scm/unit.scm")
(load "05accumulate.scm")
(load "06fact.scm")

(define (my-sin x)
  (define (term n)
    (* (expt -1 n)
       (/ (expt x (+ (* 2 n) 1))
          (fact-accumulate (+ (* 2 n) 1)))))
  (accumulate 0 plus1 50 term + 0))

(assert-approx 0 0.001 (my-sin 0))
(assert-approx 0.909 0.001 (my-sin 2))
(assert-approx 0 0.001 (my-sin 3.1415))
