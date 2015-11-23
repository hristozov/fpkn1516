(load "../../lib/scm/unit.scm")

(define (f x n)
  (define (helper i)
    (+ (* x x)
       (if (> i n)
         0
         (/ (expt 2 i)
            (helper (+ i 1))))))
  (/ x (helper 1)))

(assert-approx 0.333 0.01 (f 1 1))
(assert-approx 0.714 0.01 (f 1 2))
(assert-approx 0.419 0.01 (f 1 3))
(assert-approx 0.650 0.01 (f 1 4))
