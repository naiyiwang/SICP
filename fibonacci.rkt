#lang racket

(define (fib n)
  (define (iter b a count)
    (cond ((= count 0) a)
          (else (iter (+ a b) b (- count 1)))))
  (iter 1 0 n))


(fib 1)
(fib 3)
(fib 4)
(fib 5)
