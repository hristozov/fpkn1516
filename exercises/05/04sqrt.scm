(load "../../lib/scm/unit.scm")
(load "../04/05accumulate.scm")

; Тук на всеки индекс съпоставяме самия него чрез identity - членовете на
; редицата изобщо не зависят от индексите. Истинската работа се случва в
; комбиниращата процедура, която изчислява всеки нов член чрез този преди него.
; Затова и тази процедура игнорира аргумента си, който съдържа текущия индекс.
(define (sqrt-acc x)
  (accumulate 1
              plus1
              10
              identity
              (lambda (result _)  (/ (+ result (/ x result)) 2))
              1))

(assert-approx 4 0.01 (sqrt-acc 16))
(assert-approx 2 0.01 (sqrt-acc 4))
(assert-approx 10 0.01 (sqrt-acc 100))
(assert-approx (expt 2 0.5) 0.01 (sqrt-acc 2))
(assert-approx (expt 171 0.5) 0.01 (sqrt-acc 171))
(assert-approx (expt 2237 0.5) 0.01 (sqrt-acc 2237))
