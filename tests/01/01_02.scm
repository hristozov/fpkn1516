(load "../../lib/scm/unit.scm")

(define (f eps)
  (define (good-enough? val)
    (< (abs val) eps))
  (define (improve current i)
    (* current (- 1 (/ 1 (+ i 1)))))
  (define (helper current i)
    (if (good-enough? current)
      current
      (helper (improve current i) (+ i 1))))
  (helper 1 0))
