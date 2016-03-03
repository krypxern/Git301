;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;; Exercise 1
;;;;;;; Daniel Turchiano
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define count (x l)
	(if (null? l)
		0
		(if (= x (car l))
			(+ 1 (count x (cdr l)))
			(count x (cdr l))
		)
	)
)

(= (count 2 '(1 2 3 4 3 2 1)) 2)
(= (count 2 '(1 3 4 5 4 3 1)) 0)
(= (count 3 '()) 0 )
(= (count 1 '(1 1 1 1 1 1 1)) 7)
(= (count -1 '(-1 -1 0 -1 1)) 3)
(= (count 0 '(0)) 1)
