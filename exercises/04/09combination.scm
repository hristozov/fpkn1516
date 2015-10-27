(load "../../lib/scm/unit.scm")
(load "05accumulate.scm")

(define (combination k n)
  (/ (accumulate 1 plus1 n identity * 1)
     (* (accumulate 1 plus1 k identity * 1)
        (accumulate 1 plus1 (- n k) identity * 1))))

(assert= 35 (combination 3 7))
(assert= 495 (combination 4 12))
