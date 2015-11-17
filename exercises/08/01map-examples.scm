(load "../../lib/scm/unit.scm")

; Връща нов списък, съставен от квадратите на елементите в оригиналния.
(define (squares l)
  (map (lambda (x) (* x x))
       l))

(assert-equal '(1 4 9) (squares '(1 2 3)))

; Като горното, но работи със списък от списъци.
(define (squares-2 l)
  (map (lambda (sub-list) (map (lambda (x) (* x x))
                               sub-list))
       l))

(assert-equal '((1 4) (9 16) (25 36))
              (squares-2 '((1 2) (3 4) (5 6))))
