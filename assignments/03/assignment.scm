(load "../../lib/scm/unit.scm")

(define (count-duplicates m)
  0)

(assert= 2 (count-duplicates '((1 2 3) (1 7 8) (9 0 5))))
(assert= 3 (count-duplicates '((1 1 2) (9 0 1) (7 4 3))))
(assert= 7 (count-duplicates '((2 2 1) (1 1 8) (8 9 5))))
(assert= 0 (count-duplicates '((2 3 1) (6 7 8) (4 9 5))))
