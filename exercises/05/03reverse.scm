(load "../../lib/scm/unit.scm")
(load "../04/05accumulate.scm")

(define (count-digits-iter n)
  (define (helper i result)
    (if (<= i 0)
        result
        (helper (quotient i 10)
                (+ result 1))))
  (helper n 0))

; Това е реализация на добре познатия ни алгоритъм за reverse.
; - term отделя x-тата цифра (от дясно наляво) от х на всяка стъпка.
; - comb добавя нова цифра на края на резултата.
(define (my-reverse-accumulate n)
  (let ((len-n (count-digits-iter n)))
    (define (term x)
      (remainder (quotient n (expt 10 (- x 1))) 10))
    (define (comb result new-digit)
      (+ (* result 10) new-digit))
    (accumulate 1
                plus1
                len-n
                term
                comb
                0 )))

(assert= 0 (my-reverse-accumulate 0))
(assert= 5 (my-reverse-accumulate 5))
(assert= 1 (my-reverse-accumulate 10))
(assert= 21 (my-reverse-accumulate 12))
(assert= 1 (my-reverse-accumulate 1000))
(assert= 1234 (my-reverse-accumulate 432100))
(assert= 10234 (my-reverse-accumulate 43201))
