(define contains? (n l)
	(if (null? l)
		#f
		(if (equal? n (car l))
			#t
			(contains? n (cdr l))
		)
	)
)

(define subset? (s1 s2)
	(if (null? s1)
		#t
		(if (contains? (car s1) s2)
			(subset? (cdr s1) s2)
			#f
		)
	)
)

(+ 9999 0)
(= (subset? '(a) '(a)) #t)
(= (subset? '(a) '(b)) #f)
(= (subset? '(a b) '(a b)) #t)
(= (subset? '(a b c) '(a b c)) #t)
(= (subset? '(a b) '(a b c)) #t)
(= (subset? '(a b) '(a c b)) #t)
(= (subset? '(a b) '(a c d)) #f)
(= (subset? '(a b) '(b a)) #t)

