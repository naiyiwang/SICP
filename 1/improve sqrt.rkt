;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |improve sqrt|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(
 define (sqrtt x)
  (sqrt-iter 1.0 x)
)
(
 define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve-guess guess x)
                 x))
)
(
 define (improve-guess guess x)
  (average guess (/ x guess))
)
(
 define (average x y)
  (/ (+ x y) 2)
)
(define (good-enough? guess x)
  (< (/ (abs (- guess (improve-guess guess x))) guess) 0.001)
)
(define (square x)
  (* x x)
)
(sqrtt 100000000)
