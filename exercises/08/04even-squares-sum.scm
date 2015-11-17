(load "03accumulate.scm")
(load "02filter.scm")

(define (even-squares-sum l)
  (accumulate (filter even? l)
              (lambda (x) (* x x))
              +
              0))

(assert= 20 (even-squares-sum '(1 2 3 4)))
