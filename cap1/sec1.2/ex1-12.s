(define (pascal row col)
	(cond
		((= row 1) 1)
		((= col 1) 1)
		((= row col) 1)
		(else
			(+ 
				(pascal (- row 1) col)
				(pascal (- row 1) (- col 1))
			)
		)
	)
)

(pascal 5 3) 