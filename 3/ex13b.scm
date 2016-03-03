(val mk-set-ops (lambda (cheq)
	(list5
		(lambda (e x) (or (cheq x) (= e x))) ;add-member?
		(lambda (x) (cheq x)) ;member?
		(lambda (s x) (or (cheq x) (s x))) ;union?
		(lambda (s x) (and (cheq x) (s x))) ;inter?
		(lambda (s x) (or (and (cheq x) (not s)) (and (not (cheq x)) s))) ;diff?
	)
)
)

(val list-of-al-ops (mk-set-ops (lambda (x) (> x 0))))
(val add-member (car list-of-al-ops))
(val member? (cadr list-of-al-ops))
(val union (caddr list-of-al-ops))
(val inter (car (cdddr list-of-al-ops)))
(val diff (car (cdr (cdddr list-of-al-ops))))

(+ 1234 8765)
(equal? #t (member? 1))
(equal? #f (member? 0))
(equal? #t (add-member 0 0))
(equal? #f (add-member 0 -1))
(equal? #t (union (lambda (x) (< x 0)) -1))
(equal? #t (union (lambda (x) (< x 0)) 1))
(equal? #f (union (lambda (x) (< x 0)) 0))
(equal? #t (inter (lambda (x) (> x -1)) 0))
(equal? #f (inter (lambda (x) (> x -1)) -1))
(equal? #f (diff (lambda (x) (< x 2)) 1))
(equal? #t (diff (lambda (x) (< x 2)) 2))
(equal? #t (diff (lambda (x) (< x 2)) 0))
