#lang racket

(gcd 206
     40)

(gcd 40
     (remainder 206 40))
40 6

(gcd (remainder 206 40)
     (remainder 40 (remainder 206 40)))
6 4

(gcd (remainder 40 (remainder 206 40))
     (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
4 2

(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
     (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
2 0

正则序最后一次计算else里的算，应用序则不算

正则序11+7次remainder运算 !!!

应用序4次