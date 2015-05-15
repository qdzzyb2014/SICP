(define (expmod base exp n)
	(cond ((exp = 0) 1)
		  ((even? exp)
		  	(remainder (square (expmod base (/ b 2) n))
		  		n))
		  	(else
		  		(remainder (* base (expmod base (- exp 1) n))
		  			m))))

(defin (fermat-fast n)
	(define (try-it a)
		(= (expmod a n n) a))
	(try-it (+ 1 (random(- n 1)))))

(define (fast-prime? n times)
	(cond ((= times 0) #t)
		  ((fermat-test n) (fast-prime? n (- times 1)))
		  (else #false)))