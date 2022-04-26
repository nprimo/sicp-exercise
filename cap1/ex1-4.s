(define (a-plus-abs-b a b)
	((if (> b 0) + -) a b))

(a-plus-abs-b 5 7)
(a-plus-abs-b 5 -7)
