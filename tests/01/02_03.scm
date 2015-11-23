(load "../../lib/scm/unit.scm")
(load "../../exercises/04/05accumulate.scm")
(load "../../exercises/05/05accumulate-filter.scm")

(define (plus-1 x)
  (+ x 1))

(define (g m n)
  (accumulate 1
              plus-1
              m
              (lambda (i)
                      (accumulate-filter 1
                                         plus-1
                                         n
                                         (lambda (x) x)
                                         +
                                         0
                                         (lambda (x) (= (remainder x i) 0))))
              *
              1))

(assert-equal 5346000 (g 5 10))
