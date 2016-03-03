;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exercise 3
;;; Daniel Turchiano
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define choose (n k)
	(if (= k 1)
		n
		(if (= k 0)
			1
			(if (= n k)
				1
				(if (= n 0)
					0
					(+ (choose (- n 1) k) (choose (- n 1) (- k 1))))))))

(print 9999)
(print (= (choose 2 1) 2))
(print (= (choose 10 5) 252))
(print (= (choose 25 5) 53130))
(print (= (choose 25 24) 25))
(print (= (choose 10 0) 1))
(print (= (choose 5 0) 1))


