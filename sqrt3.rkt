;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sqrt3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sqrt3 x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? (improve-guess guess x) guess)
      guess
      (sqrt-iter (improve-guess guess x)
                 x)))

(define (improve-guess guess x)
  (one-third (* 2 guess) (/ x (square guess))))

(define (one-third x y)
  (/ (+ x y) 3))

(define (good-enough? prev-guess guess)
  (< (abs (- prev-guess guess)) 0.001))

(define (square x)
  (* x x))
