;;Part a

;Because we don't have a curry function for 1 variable
(define curry1 (f) (lambda (x) (f x)))

(define cdr* (l) (map (curry1 cdr) l))

(+ 1234 8765)
(equal? '((2 3) (2)) (cdr* '((1 2 3) (1 2))))
(equal? '((2 3) (2)) (cdr* '((3 2 3) (2 2))))
(equal? '(() ()) (cdr* '((1) (1))))
(equal? '(() ()) (cdr* '((3) (2))))
(equal? '((2 3)) (cdr* '((1 2 3))))
(equal? '((2 3) (2) (3 2)) (cdr* '((1 2 3) (9 2) (9 3 2))))

;;Part b
(define greater (m n) (if (> m n) m n) )

(define max* (l) (foldl greater 0 l))

(+ 1234 8765)
(= 1 (max* '(0 1)))
(= 0 (max* '(0 -1)))
(= 0 (max* '(-1 0 -1)))
(= 3 (max* '(3 2 1 0)))
(= 3 (max* '(0 1 2 3)))
(= 3 (max* '(0 1 2 3 2 1 0)))

;;Part c

(define gcd* (l) (foldl gcd 0 l))

(+ 1234 8765)
(= 10 (gcd* '(0 10)))
(= 5 (gcd* '(5 10)))
(= 5 (gcd* '(15 10)))
(= 4 (gcd* '(20 8 48)))
(= 6 (gcd* '(6 36)))
(= 6 (gcd* '(6 18 36)))
(= 3 (gcd* '(6 18 21 36)))

;;Part d

(define lcm* (l) (foldl lcm 1 l))

(+ 1234 8765)
(= 0 (lcm* '(0 10)))
(= 10 (lcm* '(5 10)))
(= 30 (lcm* '(15 10)))
(= 80 (lcm* '(20 16 40)))
(= 36 (lcm* '(6 36)))
(= 36 (lcm* '(6 18 36)))
(= 42 (lcm* '(1 6 21)))

;;Part e

(define sum (l) (foldl + 0 l))

(+ 1234 8765)
(= 10 (sum '(0 10)))
(= 15 (sum '(5 10)))
(= 25 (sum '(15 10)))
(= 76 (sum '(20 8 48)))
(= 42 (sum '(6 36)))
(= 60 (sum '(6 18 36)))
(= 81 (sum '(6 18 21 36)))

;;Part f

(define product (l) (foldl * 1 l))

(+ 1234 8765)
(= 0 (product '(0 10)))
(= 50 (product '(5 10)))
(= 150 (product '(15 10)))
(= 7680 (product '(20 8 48)))
(= 216 (product '(6 36)))
(= 3888 (product '(6 18 36)))
(= 1 (product '(1 1 1)))

;;Part g

(define append (l1 l2) (foldr cons l2 l1))

(+ 1234 8765)
(equal? '(1 2 2 1) (append '(1 2) '(2 1)))
(equal? '(1 2 3 4) (append '(1 2) '(3 4)))
(equal? '(3 4 1 2) (append '(3 4) '(1 2)))
(equal? '() (append '() '()))
(equal? '(1 2) (append '(1 2) '()))

;;Part h

(define addtoend (x l) (foldr cons (list1 x) l))

(+ 1234 8765)
(equal? '(1 2 3) (addtoend 3 '(1 2)))
(equal? '(1 2 1) (addtoend 1 '(1 2)))
(equal? '(1) (addtoend 1 '()))
(equal? '(1 2 -1) (addtoend -1 '(1 2)))

;;Part i

(define reverse (l) (foldl cons '() l))

(+ 1234 8765)
(equal? '(1 2 3) (reverse '(3 2 1)))
(equal? '(1 2 3 4) (reverse '(4 3 2 1)))
(equal? '(1 2 1) (reverse '(1 2 1)))
(equal? '() (reverse '()))
(equal? '(1) (reverse '(1)))

;;Part j

(define insert (x l)
 	(if (null? l)
		(list1 x)
 		(if (< x (car l))
			(cons x l)
			(cons (car l) (insert x (cdr l)))
		)
	)
)

(define insertion-sort (l) (foldl insert '() l))

(+ 1234 8765)
(equal? '(1) (insertion-sort '(1)))
(equal? '(1 2) (insertion-sort '(2 1)))
(equal? '(1 2 3) (insertion-sort '(2 3 1)))
(equal? '(1 2 3 4) (insertion-sort '(1 4 2 3)))
(equal? '(-1 0 1) (insertion-sort '(0 1 -1)))

;Part k
(define mkpairfn (x)
	(lambda (l)
		(map ((curry cons) x) l)
	)
)

(+ 1234 8765)
(equal? '((1 1)) ((mkpairfn 1) '((1))))
(equal? '((1 1) (1 2)) ((mkpairfn 1) '((1) (2))))
(equal? '((2 1)) ((mkpairfn 2) '((1))))
(equal? '((2 1) (2 2)) ((mkpairfn 2) '((1) (2))))
(equal? '((1) (1) (1)) ((mkpairfn 1) '(() () ())))
(equal? '((3 2 1) (3 4 5)) ((mkpairfn 3) '((2 1) (4 5))))
(equal? '((a) (a b c) (a d) (a (e f))) ((mkpairfn 'a) '(() (b c) (d) ((e f)))))
