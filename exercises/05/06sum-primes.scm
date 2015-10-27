(load "../../lib/scm/unit.scm")
(load "05accumulate-filter.scm")
(load "../04/05accumulate.scm")

(define (prime? n)
  (define (term candidate)
    (not (= 0 (remainder n candidate))))
  (if (<= n 1)
      #f
      (accumulate 2 plus1 (- n 1) term (lambda (x y) (and x y)) #t)))

(define (identity x) x)
(define (plus1 x) (+ x 1))

; Събира простите числа в интервала от start до end. Пример за използване на
; accumulate-filter.
(define (sum-primes start end)
  (accumulate-filter start plus1 end identity + 0 prime?))

(assert= 17 (sum-primes 1 10))
