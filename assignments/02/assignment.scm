(load "../../lib/scm/unit.scm")

(define (zad1 start end f value)
  0)

(assert= 25 (zad1 1
                  10
                  (lambda (x) (remainder x 2))
                  1))
(assert= 30 (zad1 1
                  10
                  (lambda (x) (remainder x 2))
                  0))

(define (zad2 f g h)
  (lambda (x)
          0))

(define (plus-1 x) (+ x 1))
(define (2-times x) (* x 2))
(define (plus-3 x) (+ x 3))
(define p (zad2 plus-1 2-times plus-3))

(assert= 8 (p 1)) ; = (1 + 1) + (2 * 1) + (1 + 3)
(assert= -2 (p 2)) ; = (2 + 1) - (2 + 3)
(assert= 24 (p 3)) ; = (3 + 1) * (2 * 3)
