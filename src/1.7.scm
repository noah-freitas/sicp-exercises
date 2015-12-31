; Exercise 1.7.  The good-enough? test used in computing square roots will
; not be very effective for finding the square roots of very small numbers.
; Also, in real computers, arithmetic operations are almost always performed
; with limited precision. This makes our test inadequate for very large numbers.
; Explain these statements, with examples showing how the test fails for small
; and large numbers. An alternative strategy for implementing good-enough? is
; to watch how guess changes from one iteration to the next and to stop when
; the change is a very small fraction of the guess. Design a square-root procedure
; that uses this kind of end test. Does this work better for small and large
; numbers?

; It fails for small numbers since it will think that it has a good enough
; answer before it actually does.  For instance (sqrt 0.0000000001) equals
; .03125000106562499, but (square .03125000106562499) equals 9.76562566601563e-4
; which is several orders of magnitude larger than 0.0000000001.

; It is inefficient for large numbers, since it attempts to calculate the
; square root to too high a precision.  For instance, executing (sqrt 100000000000000000)
; on my machine does not terminate in any acceptable time.

; Here is an implementation that uses a good-enough? function that terminates
; when the difference between guesses is smaller than one millionth of the
; number whose root is being calculated.

(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess x)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess previous-guess x)
  (< (abs (- guess previous-guess))
     (one-millionth x)))

(define (one-millionth x)
  (/ x 1000000))

(define (sqrt x)
  (sqrt-iter (- x 1.0) 1.0 x))
