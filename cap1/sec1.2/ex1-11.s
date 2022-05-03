;; recusirve tree 
(define (f-tree n)
	(cond 
		((< n 3) n)
		(else
			(+ 
				(f-tree (- n 1))
				(* 2 (f-tree (- n 2))) 
				(* 3 (f-tree (- n 3)))
			) 
		)
	)
)

(f-tree 5)
(f-tree 2)

;; iterative
;;(define (f n)
;;	(define (f-iter ... n)
;;		...
;;	)
;;	(f-iter n (- n 2) (- n 3) 0)
;;)

