(load "../../lib/scm/unit.scm")
(load "05accumulate.scm")

(define (variation k n)
  (/ (accumulate 1 plus1 n identity * 1)
     (accumulate 1 plus1 (- n k) identity * 1)))

(assert= 210 (variation 3 7))
(assert= 11880 (variation 4 12))
