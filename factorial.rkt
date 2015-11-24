;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname factorial) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (factorial x)
  (if (= x 1)
   x
   (* x (factorial (- x 1)))))

(factorial 4)

(define (factorial2 x)
  (factor-iter 1 1 x))

(define (factor-iter cumulate next max)
  (if (> next max)
      cumulate
      (factor-iter (* cumulate next)
                   (+ next 1)
                   max)))

(factorial2 4)