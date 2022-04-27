(define (square x)
	(* x x)
)

(define (improve y x)
	(/
		(+ 
			(* 2 y)
			(/ x (square y))
		)
	3)
)

(define (good-enough? guess x)
	(< 
		(abs 
			(- guess (improve guess x))
		) 
		0.001
	)
)

(define (cbrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(cbrt-iter (improve guess x) x)
	)
)

(cbrt-iter 3 1728)

