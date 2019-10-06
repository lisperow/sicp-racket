#lang sicp

(#%require rackunit)

(define (last-pair l)
  (if (null? (cdr l))
    (list (car l))
    (last-pair (cdr l))))

(check-equal? (last-pair (list 1 2 3 4)) (list 4))