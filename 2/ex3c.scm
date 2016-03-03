(define =set? (s1 s2)
	(if (and (null? s1) (null? s2))
		#t
		(if (or (null? s1) (null? s2))
			#f
			(if (= (car s1) (car s2))
				(=set? (cdr s1) (cdr s2))
				#f
			)
		)
	)
)



(+ 9999 0)
(= (=set? '(a) '(a)) #t)
(= (=set? '(a b) '(a b)) #t)
(= (=set? '(a b c d e) '(a b c d e)) #t)
(= (=set? '(a) '(b)) #f)
(= (=set? '(a) '(a b)) #f)
(= (=set? '(b) '(a b)) #f)
(= (=set? '(a b) '(b a)) #f)
