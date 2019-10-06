#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (qbiter guess x)
  (if (good-enough? guess x)
      guess
      (qbiter (improve guess x)
              x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x) (* x x x))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
      3))

(define (qbrt x)
  (qbiter 1.0 x))      