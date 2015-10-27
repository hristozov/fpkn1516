(load "../../lib/scm/unit.scm")

(define (identity x)
  x)

(define (plus1 x)
  (+ x 1))

(define (accumulate start next end term comb initial)
  (define (helper current result)
    (if (> current end)
        result
        (helper (next current)
                (comb result (term current)))))
  (helper start initial))

(define (_square x) (* x x))

(assert= 36 (accumulate 1 plus1 3 _square * 1))
