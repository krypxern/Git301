(define leaf? (node) (atom? node))
(define left (node)
	(cadr node)
)
(define right (node) (caddr node))
(define label (node)
	 (if (atom? node)
		node
		(car node)
	)
)


;I used this method which we learned in class to test my ideas, it does not work
; with the in-class definition of 'left', 'right', and 'label'. Clearly something needs
; to be changed...
;(define pre-order (t)
;	(cons
;		(label t)
;		(if (leaf? t)
;			'()
;			(append (pre-order (left t)) (pre-order (right t)))
;		)
;	)
;)

(define post-order (t)
	(if (leaf? t)
		(list1 t)
		(append
			(append (post-order (left t)) (post-order (right t)))
			(list1 (label t))
		)
	)
)

(define in-order (t)
	(if (leaf? t)
		(list1 t)
		(append
			(append
				(in-order (left t))
				(list1 (label t))
			)
			(in-order (right t))
		)
	)
)

(+ 0 9999)
(equal? (post-order '(1 (2 4 5) 3)) '(4 5 2 3 1))
(equal? (post-order '(1 (2 4 5) (3 2 1))) '(4 5 2 2 1 3 1))
(equal? (post-order '(1 2 3)) '(2 3 1))
(equal? (post-order '(1 (2 (4 5 6) 5) 3)) '(5 6 4 5 2 3 1))
(equal? (post-order '(1 (2 4 (5 6 7)) 3)) '(4 6 7 5 2 3 1))
(+ 0 9999)
(equal? (in-order '(1 (2 4 5) 3)) '(4 2 5 1 3))
(equal? (in-order '(1 (2 4 5) (3 2 1))) '(4 2 5 1 2 3 1))
(equal? (in-order '(1 2 3)) '(2 1 3))
(equal? (in-order '(1 (2 (4 5 6) 5) 3)) '(5 4 6 2 5 1 3))
(equal? (in-order '(1 (2 4 (5 6 7)) 3)) '(4 2 6 5 7 1 3))

