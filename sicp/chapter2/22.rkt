#lang sicp

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (print-point p)
  (newLine)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment s) (car s))

(define (end-segment s) (cdr s))

(define (midpoint-segment s)
  (let (x (start-segment s))
       (y (end-segment s))
       (make-point
        (/ (+ (x-point x) (x-point y)) 2)
        (/ (+ (y-point x) (y-point y)) 2))))
