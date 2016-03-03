;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exercise 1
;;; Daniel Turchiano
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define sigma (m n)
	(if (> m n)
		0
		(+ m (sigma (+ m 1) n ))))

(print 9999)
(print (= (sigma 1 1) 1))
(print (= (sigma 1 6) 21))
(print (= (sigma 5 6) 11))
(print (= (sigma 4 6) 15))
(print (= (sigma 1 10) 55))
(print (= (sigma 9 10) 19))

