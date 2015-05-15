(load "F:\\scheme\\p33-smallest-divisor.scm")

(define (next-odd n)
	(if (odd? n)
		(+ 2 n)
		(+ 1 n)))


(define (continue-prime n count start-time)
	(cond ((= count 0)
			(display "Done!"))
		  ((prime? n)
		  	(display n)
		  	(newline)
		  	(display (- (real-time-clock) start-time))
		  	(newline)
		  	(newline)
		  	(continue-prime (next-odd n) (- count 1) (real-time-clock)))
		  (else 
		  	(continue-prime (next-odd n) count start-time))))


