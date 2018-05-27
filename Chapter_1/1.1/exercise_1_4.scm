(define (a-plus-abs-b a b) 
  ((if (> b 0) + -) a b))

; a-plus-abs-b is a function that takes 2 parameters.
; It uses an if expression evaluating the abs value of b
; to decide if the return expression will be adding or 
; subtracting b to/from a

(a-plus-abs-b 10 -4) ; => 14
(a-plus-abs-b 10 4) ; => 14
