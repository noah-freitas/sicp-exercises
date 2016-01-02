(load "src/1.11.scm")

(define (test input)
        (if (= (f-recursive input) (f-iterative input))
            (write-string (string-append "\nSUCCESS: " (number->string input)))
            (error        (string-append "\nERROR: "   (number->string input)))))

(define (run-tests)
        (begin
            (test -1)
            (test 0)
            (test 1)
            (test 2)
            (test 3)
            (test 4)
            (test 5)
            (test 6)
            (test 7)
            (test 8)
            (test 9)
            (test 10)
            (test 22)))

(run-tests)
