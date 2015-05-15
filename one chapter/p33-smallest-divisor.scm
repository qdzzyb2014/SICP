
;用从2开始的连续的整数去检测他们能否整除n
(define (smallest-divisor n)
	(find-divisor n 2))

(define (divides? a b)
	(= (remainder b a) 0))

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
		  ((divides? test-divisor n) test-divisor)
		  (else (find-divisor n (+ test-divisor 1)))))




;检查一个数是否是素数：n是素数当且仅当他是自己的最小公因数
(define (prime? n)
	(= n (smallest-divisor n)))