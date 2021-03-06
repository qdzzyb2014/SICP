(define (double n)
	(+ n n))

(define (halve n)
	(/ n 2))
(define (even? n)
	(= (remainder n 2) 0))
(define (odd? n)
	(= (remainder n 2) 1))

(define (multi a b)
	(cond ((= b 0)
			0)
		((even? b)
			(double (multi a (halve b))))
		((odd? b)
			(+ a (multi a (- b 1))))))

