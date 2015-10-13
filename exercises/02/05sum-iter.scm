(load "../../lib/scm/unit.scm")

; Рекурсивна сума на числа
; Ако пробвате с малък start и огромен (>10^8) end ще видите колко много памет
; се използва.
(define (sum-rec start end)
  (if (>= start end)
    end
    (+ start (sum-rec (+ start 1) end))))

; Итеративен вариант на сумирането. Вътрешно се изпълнява подобно на цикъл от
; императивен език. Няма проблем с голяма (>10^8) разлика между start и end.
(define (sum-iter start end)
  (define (helper current result)
    (if (> current end)
      result
      (helper (+ current 1)
              (+ result current))))
  (helper start 0))

(assert= 0 (sum-rec 0 0))
(assert= 0 (sum-iter 0 0))
(assert= 5050 (sum-rec 1 100))
(assert= 5050 (sum-iter 1 100))
