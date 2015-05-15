(load "F:\\scheme\\sum.scm")

(define (integeral f a b dx)
	(define (add-dx x) (+ x dx))
	(* (sum f (+ a (/ dx 2.0)) add-dx b)
		dx))