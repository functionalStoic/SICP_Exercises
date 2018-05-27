(define (square x y) (* x y))
(define (sumsquares x y) (+ (square x x) (square y y)))
(define (square-sum-larger a b c)
  (cond 
    ((and (>= a c) (>= b c)) (sumsquares a b))
    ((and (>= b a) (>= c a)) (sumsquares b c))
    ((and (>= a b) (>= c b)) (sumsquares a c))))