; Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

; Solution: if b > 0 => a + b, else a - b

#lang sicp

(#%require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 1 2) 3)
(check-equal? (a-plus-abs-b 1 -2) 3)
