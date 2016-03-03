;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exercise 6
;;; Daniel Turchiano
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define Bin (m)
	(if (= (/ m 2) 0)
		m
		(+ (mod m 2) (SubBin (/ m 2)))
))

(define SubBin (m)
	(if (= (/ m 2) 0)
		(* 10 m)
		(* 10 (+ (mod m 2) (SubBin (/ m 2))))
))

(print 9999)
(print (= (Bin 8) 1000))
(print (= (Bin 0) 0))
(print (= (Bin 15) 1111))
(print (= (Bin 3) 11))
(print (= (Bin 64) 1000000))
(print (= (Bin 1) 1))
