(load "../../lib/scm/unit.scm")

(define (sum-step start end step)
  (define (helper-asc current result)
    (if (> current end)
        result
        (helper-asc (+ current step)
                    (+ current result))))
  (define (helper-desc current result)
    (if (< current end)
        result
        (helper-desc (+ current step)
                     (+ current result))))
  (if (< step 0)
    (helper-desc start 0)
    (helper-asc start 0)))

(assert= 55 (sum-step 1 10 1))
(assert= 25 (sum-step 1 10 2))
(assert= 30 (sum-step 2 10 2))
(assert= 15 (sum-step 5 1 -1))
(assert= 9 (sum-step 5 1 -2))
(assert= 6 (sum-step 4 1 -2))
