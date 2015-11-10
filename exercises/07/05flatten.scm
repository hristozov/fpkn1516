(load "../../lib/scm/unit.scm")

; flatten взима списък от вложени (може повече от един път) списъци и го
; „изглажда“ - връща всички елементи по вложените списъци, подредени в един
; списък без влагане (вижте примера).
; За целта на всяка стъпка разгеждаме какво има най-отпред на списъка и
; преценяваме какво да правим с него според това дали е списък или атом. Ако
; тази задача ви притеснява, разгледайте member-deep.
(define (flatten l)
  (cond
    ((null? l) l)
    ((list? (car l)) (append
                       (flatten (car l))
                       (flatten (cdr l))))
    (else (cons (car l)
                (flatten (cdr l))))))

(assert-equal '(1 2 3 4 5 6) (flatten '((() 1) 2 (3 4 5 ()) ((6)) ())))
