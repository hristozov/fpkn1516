(load "../../lib/scm/unit.scm")

(define (f n)
  (define (helper i)
    (if (> i (+ n 1))
      0
      (/ 1 (+ (- (* 2 i)
                 1)
              (helper (+ i 1))))))
  (helper 1))

(assert-approx 1 0.01 (f 0))
(assert-approx 0.75 0.01 (f 1))
(assert-approx 0.76 0.01 (f 2))
