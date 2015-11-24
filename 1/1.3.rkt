;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (larger a b)
  (if (> a b) a b))
(define (max-sum a b c)
  (if (= a (larger a b))
      (+ a (larger b c))
      (+ b (larger a c))))