#lang racket
(require "../../lib/rkt/unit.rkt")

(define (construct-stream n)
  (empty-stream))

(assert-equal 7 ((stream-ref (construct-stream 0) 2) 7))
(assert-equal 7 ((stream-ref (construct-stream 2) 0) 7))
(assert-equal 0 ((stream-ref (construct-stream 0) 0) 0))
(assert-equal 5 ((stream-ref (construct-stream 1) 1) 4))
(assert-equal 19 ((stream-ref (construct-stream 5) 3) 4))
