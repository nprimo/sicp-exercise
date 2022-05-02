(define (good-enough? guess x)
	(< (abs (- (improve guess x) guess)) 0.001) 
)

(define (mean x y)
	(/ (+ x y) 2)
)

(define (improve guess x)
	(mean guess (/ x guess))
)

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)
	)
)

(sqrt-iter 4 0.2)
