(define (sqrt x)
  (define (isGoodEnough guess)
    (< (abs (- (square guess) x)) 0.001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess)
    (if (isGoodEnough guess)
      guess
      (sqrt-iter (improve guess))))

  (define (average y)
    (/ (+ x y) 2))

  (sqrt-iter 1.0))
