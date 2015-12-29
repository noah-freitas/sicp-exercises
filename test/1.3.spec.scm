(load "src/1.3.scm")

(define (test input expected message)
        (if (= input expected)
            (write-string (string-append "\nSUCCESS: " message))
            (error        (string-append "\nERROR: "   message))))

(define (run-tests)
        (begin
            (test (sum-of-squares-of-two-largest 3 1 1) 10 "(= (sum-of-squares-of-two-largest 3 1 1) 10)")
            (test (sum-of-squares-of-two-largest 1 3 1) 10 "(= (sum-of-squares-of-two-largest 1 3 1) 10)")
            (test (sum-of-squares-of-two-largest 1 1 3) 10 "(= (sum-of-squares-of-two-largest 1 1 3) 10)")
            (test (sum-of-squares-of-two-largest 3 3 1) 18 "(= (sum-of-squares-of-two-largest 3 3 1) 18)")
            (test (sum-of-squares-of-two-largest 3 1 3) 18 "(= (sum-of-squares-of-two-largest 3 1 3) 18)")
            (test (sum-of-squares-of-two-largest 1 3 3) 18 "(= (sum-of-squares-of-two-largest 1 3 3) 18)")
            (test (sum-of-squares-of-two-largest 3 3 3) 18 "(= (sum-of-squares-of-two-largest 3 3 3) 18)")
            (test (sum-of-squares-of-two-largest 3 0 3) 18 "(= (sum-of-squares-of-two-largest 3 0 3) 18)")
            (test (sum-of-squares-of-two-largest 3 0 0) 9  "(= (sum-of-squares-of-two-largest 3 0 0) 9)")
            (test (sum-of-squares-of-two-largest -3 -3  3) 18 "(= (sum-of-squares-of-two-largest -3 -3  3) 18)")
            (test (sum-of-squares-of-two-largest -3 -3 -3) 18 "(= (sum-of-squares-of-two-largest -3 -3 -3) 18)")
            (test (sum-of-squares-of-two-largest -3  0  3) 9  "(= (sum-of-squares-of-two-largest -3  0  3) 9)")))

(run-tests)
