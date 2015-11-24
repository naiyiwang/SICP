#lang racket
(define (f row column)
  (cond ((= column 1) 1)
        ((= column row) 1)
        (else (+ (f (- row 1) column)
                 (f (- row 1) (- column 1))))))

(f 1 1)
(f 3 2)
(f 5 2)
(f 5 3)