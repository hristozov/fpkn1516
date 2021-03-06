(load "../../lib/scm/unit.scm")

; Да се върне n-тият елемент от списъка l. Това е еквивалентно на вградената
; процедура list-ref.
(define (nth l n)
  (define (nth-helper current-l i)
    (if (= i n)
        (car current-l)
        (nth-helper (cdr current-l)
                    (+ i 1))))
  (nth-helper l 0))

(assert= 1 (nth '(1 2 3) 0))
(assert= 3 (nth '(1 2 3) 2))
