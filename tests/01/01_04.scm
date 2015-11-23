(load "../../lib/scm/unit.scm")
(load "../../exercises/04/05accumulate.scm")

(define (compose f g)
  (lambda (x)
    (g (f x))))

(define (repeat f n)
  (accumulate 1
              plus1
              n
              (lambda (_) f)
              compose
              identity))

(define (h f g)
  (lambda (x) ((repeat g (f x)) x)))

(assert-equal 128 ((h (lambda (x) (+ x 1))
                      (lambda (x) (* x 2)))
                   4))
