(load "../../lib/scm/unit.scm")

(define (identity x)
  x)

(define (plus1 x)
  (+ x 1))

; accumulate-filter е версия на accumulate, която комбинира стойността (т.е. я
; подава на comb), получена от term, само ако даден предикат се оценява на #t
; за нея. Вижте примера долу и по-нататък в задачите.
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

(assert= 25 (accumulate-filter 1 plus1 10 identity + 0 odd?))
(assert= 30 (accumulate-filter 1 plus1 10 identity + 0 even?))
