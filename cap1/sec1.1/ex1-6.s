(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
	(else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 1)

(define (square x)
	(* x x))

(define (good-enough? guess x)
	(< (abs ( - (square guess) x)) 0.001))

(define (average a b)
	(/ (+ a b) 2))

(define (improve guess x)
	(average guess (/ x guess)))

(define (sqrt-iter guess x)
	;; (new-if (good-enough? guess x)
	(if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x)
		x)))

(sqrt-iter 2 9)

