(load "../../lib/scm/unit.scm")

(define (accumulate-filter start next end term comb initial pred)
  (define (helper current result)
    (let
      ((current-term (term current))
       (next-one (next current)))
       (cond
         ((> current end) result)
         ((pred current-term) (helper next-one (comb result current-term)))
         (else (helper next-one result)))))
  (helper start initial))

(define (zad1 start end f value)
  (accumulate-filter start
                     (lambda (x) (+ x 1))
                     end
                     (lambda (x) x)
                     +
                     0
                     (lambda (val) (= (f val) value))))

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
          (let ((rem (remainder x 3)))
            (cond
              ((= rem 0) (* (f x) (g x)))
              ((= rem 1) (+ (f x) (g x) (h x)))
              (else (- (f x) (h x)))))))

(define (plus-1 x) (+ x 1))
(define (2-times x) (* x 2))
(define (plus-3 x) (+ x 3))
(define p (zad2 plus-1 2-times plus-3))

(assert= 8 (p 1)) ; = (1 + 1) + (2 * 1) + (1 + 3)
(assert= -2 (p 2)) ; = (2 + 1) - (2 + 3)
(assert= 24 (p 3)) ; = (3 + 1) * (2 * 3)
