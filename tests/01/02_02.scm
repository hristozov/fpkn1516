(load "../../lib/scm/unit.scm")
(load "../../exercises/04/05accumulate.scm")

(define (double-fact n)
  (accumulate (if (odd? n) 1 2)
              (lambda (x) (+ x 2))
              n
              (lambda (x) x)
              *
              1))

(assert-equal 8 (double-fact 4))
(assert-equal 15 (double-fact 5))

(define (f eps)
  (define (good-enough? val)
    (< (abs val) eps))
  (define (helper i)
    (let ((current (/ (double-fact (* i 2))
                      (+ (double-fact (+ (* i 2) 1))
                         (expt i (- i 1))))))
      (if (good-enough? current)
        current
        (helper (+ i 1)))))
  (helper 1 0))
