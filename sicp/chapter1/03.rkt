#lang sicp

(#%require rackunit)

(define (square x)
  (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (solution x y z)
  (cond ((and (< x y) (x < z)) (sum-of-square y z))
        ((and (< y x) (y < z)) (sum-of-square x z))
        (else (sum-of-square(x y))))

(check-equal? (solution 2 3 4) 25)