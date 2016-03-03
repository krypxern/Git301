(define remove (x s)
	(if (null? s)
		'()
		(if (= x (car s))
			(remove x (cdr s))
			(cons (car s) (remove x (cdr s)))
		)
	)
)

(+ 9999 0)
(equal? (remove 1 '(1 2 3)) '(2 3))
(equal? (remove 1 '(2 3)) '(2 3))
(equal? (remove 1 '(2 1 3)) '(2 3))
(equal? (remove 1 '(1 2 1 3 1)) '(2 3))
(equal? (remove 1 '(1 1 1 1 1)) '())
(equal?(remove 0 '(0 1 2 3 2 1 0)) '(1 2 3 2 1))