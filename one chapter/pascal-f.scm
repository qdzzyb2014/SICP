(load "F:\\Scheme\\pascal2.scm")
(define (pascal row col)
    (/ (factorial row)
       (* (factorial col)
          (factorial (- row col)))))