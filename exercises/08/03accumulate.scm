(load "../../lib/scm/unit.scm")

; accumulate за списъци. Вместо start, end и next работим със списък, който
; съдържа елементите, които трябва да обходим.
(define (accumulate l term comb initial)
  (define (helper current-l result)
    (if (null? current-l)
        result
        (helper (cdr current-l)
                (comb result (term (car current-l))))))
  (helper l initial))

(assert= 14 (accumulate '(1 2 3) (lambda (x) (* x x)) + 0))
