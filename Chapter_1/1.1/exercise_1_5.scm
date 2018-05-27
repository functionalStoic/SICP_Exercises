(define (p) (p))
(define (test x y)
  (if (= x 0)
    0
    y))

; Using applicative-order evaluation, the evaluation 
; of (test 0 (p)) never terminates, because (p) is 
; infinitely expanded to itself. 

; Using normal-order evaluation, the expression evaluates,
; step by step, to 0

; My interpreter is using applicative-order evaluation
; because the process hung when running it