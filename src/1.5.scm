; Exercise 1.5.  Ben Bitdiddle has invented a test to determine whether the
; interpreter he is faced with is using applicative-order evaluation or
; normal-order evaluation. He defines the following two procedures:
;
; (define (p) (p))
;
; (define (test x y)
;   (if (= x 0)
;       0
;       y))
;
; Then he evaluates the expression
;
; (test 0 (p))
;
; What behavior will Ben observe with an interpreter that uses applicative-order
; evaluation? What behavior will he observe with an interpreter that uses
; normal-order evaluation? Explain your answer. (Assume that the evaluation rule
; for the special form if is the same whether the interpreter is using normal or
; applicative order: The predicate expression is evaluated first, and the result
; determines whether to evaluate the consequent or the alternative expression.)

"If the interpreter is using applicative-order then the program will enter an
infinite loop, since it will first evaluate `(p)` before calling `test`.  Evaluating
`(p)` causes the infinite loop.  If the interpreter is using normal-order then the
call to `test` will produce `0` and `(p)` is never evaluated since its result is not
needed."
