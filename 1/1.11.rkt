#lang racket

(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1)) (f (- n 2)) (f (- n 3))))))

(f 3)

(define (f1 n)
  (define (iter a b c count)
    (cond ((= count 0) c)
        (else (iter (+ a b c) a b (- count 1)))))
  (iter 2 1 0 n))

(f1 3)