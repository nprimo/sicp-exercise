(define (sum-2-larger a b c) 
	(cond
		((and (> a b) (> b c)) (+ a b))
		((and (> a b) (> c b)) (+ a c))
		((and (> b a) (> a c)) (+ a b))
		(else (+ b c))
	)
)

(sum-2-larger 5 2 1)
(sum-2-larger 5 1 2)
(sum-2-larger 1 5 2)
(sum-2-larger 1 2 5)
(sum-2-larger 2 5 1)
(sum-2-larger 2 1 5)

