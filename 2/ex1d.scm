(define contains? (n l)
	(if (null? l)
		#f
		(if (equal? n (car l))
			#t
			(contains? n (cdr l))
		)
	)
)

(define sublist?* (l1 l2)
	(if (null? l1)
		#t
		(if (null? l2)
			#f
			(if (= (car l1) (car l2))
				(sublist?* (cdr l1) (cdr l2))
				(sublist?* l1 (cdr l2))
			)
		)
	)
)

(define sublist? (l1 l2)
	(if (or (null? l1) (null? l2))
		#f
		(if (= (car l1) (car l2))
			(if (sublist?* (cdr l1) (cdr l2))
				#t
				(sublist? l1 (cdr l2))
			)
			(sublist? l1 (cdr l2))
		)
	)
)	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This method turned out to be subset ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(define sublist? (l1 l2)
;	(if (null? l1)
;		#t
;		(if (null? l2)
;			#f
;			(if (contains? (car l1) l2)
;				(sublist? (cdr l1) l2)
;				#f
;			)
;		)
;	) 
;)		

(define contig-sublist?* (l1 l2)
	(if (null? l1)
		#t
		(if (null? l2)
			#f
			(if (= (car l1) (car l2))
				(contig-sublist?* (cdr l1) (cdr l2))
				#f
			)
		)
	)
)
(define contig-sublist? (l1 l2)
	(if (or (null? l1) (null? l2))
		#f
		(if (= (car l1) (car l2))
			(if (contig-sublist?* (cdr l1) (cdr l2))
				#t
				(contig-sublist? l1 (cdr l2))
			)
			(contig-sublist? l1 (cdr l2))
		)
	)
)	

(+ 9999 0)
(= (sublist? '(a) '(a)) #t)
(= (sublist? '(a) '(b)) #f)
(= (sublist? '(a b) '(a b)) #t)
(= (sublist? '(a b c) '(a b c)) #t)
(= (sublist? '(a b) '(a b c)) #t)
(= (sublist? '(a b) '(a c b)) #t)
(= (sublist? '(a b) '(a c d)) #f)
(= (sublist? '(a b) '(a a c c b b)) #t)
(= (sublist? '(a b) '(b a)) #f)
(= (sublist? '(a b c) '(a c b)) #f)

(+ 9999 0)
(= (contig-sublist? '(a) '(a)) #t)
(= (contig-sublist? '(a) '(b)) #f)
(= (contig-sublist? '(a b) '(a b)) #t)
(= (contig-sublist? '(a b c) '(a b c)) #t)
(= (contig-sublist? '(a b) '(a b c)) #t)
(= (contig-sublist? '(a b) '(a c b)) #f)
(= (contig-sublist? '(a b) '(a a)) #f)
(= (contig-sublist? '(a b c) '(a a b b c c)) #f)
