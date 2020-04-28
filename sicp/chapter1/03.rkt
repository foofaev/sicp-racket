; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

#lang sicp

(#%require rackunit)

(define (sum-of-squares x y) (+ (* x x) (* y y)))
(define (math-max x y z)
  (cond
    [(and (> x y) (> x z)) x]
    [(and (> y x) (> y z)) y]
    [else z]
    )
  )

(define (math-middle x y z)
  (cond
    [(and (> x y) (< x z)) x]
    [(and (< x y) (> x z)) x]
    [(and (> y x) (< y z)) y]
    [(and (< y x) (> y z)) y]
    [else z]
    )
  )
(define (solution x y z)
  (let ([max (math-max x y z)]
        [middle (math-middle x y z)])
    (sum-of-squares max middle))
  )

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 3 2 1) 13)
(check-equal? (solution 100 3 1) 10009)
