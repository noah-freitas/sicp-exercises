; Exercise 1.2.  Translate the following expression into prefix form
; (5 + 1/2 + (2 - (3 - (6 - 4/5)))) / (3(6 - 2)(2 - 7))

(/ (+ 5
      (/ 1 2)
      (- 2
         (- 3
            (- 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))
