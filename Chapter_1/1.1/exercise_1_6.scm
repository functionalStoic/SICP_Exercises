; The default if statement is a special form which means 
; that even when an interpreter follows applicative
; substitution, it only evaluates one of it's parameters- 
; not both. However, the newly created new-if doesn't have 
; this property and hence, it never stops calling itself 
; due to the third parameter passed to it in sqrt-iter.

(define (new_if predicate then-clause else-clause)
  (cond (predicate then-clause)
    (else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
          (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 2) ;Aborting!: maximum recursion depth exceeded
; Infinite loop: sqrt-iter always evaluates itself