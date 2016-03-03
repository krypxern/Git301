(define flatten (l)
	(if (null? l)
		l
		(if (atom? (car l))
			(cons (car l) (flatten (cdr l)))
			(append (flatten (car l)) (flatten (cdr l)))
		)
	)
)

(+ 0 9999)
(equal? (flatten '(1 (2 3 4) (4 5 6) (7 (8) 9))) '(1 2 3 4 4 5 6 7 8 9))
(equal? (flatten '(1)) '(1))
(equal? (flatten '(1 (2 ))) '(1 2))
(equal? (flatten '(1 (2 (3)))) '(1 2 3))
(equal? (flatten '(1 (2 (3 (4))))) '(1 2 3 4))

