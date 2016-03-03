;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exercise 5
;;; Daniel Turchiano
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define prime (m)
	(if (<= m 1)
		0
		(if (= m 2)
			1
			(if (= m 3)
				1
				(subPrime m (/ m 2))))))

(define subPrime (m n)
	(if (= n 1)
		1
		(if (= (mod m n) 0)
			0
			(subPrime m (- n 1)))))

(print 9999)
(print (= (prime 1) 0))
(print (= (prime 2) 1))
(print (= (prime 3) 1))
(print (= (prime 4) 0))
(print (= (prime 1439) 1))
(print (= (prime 1437) 0))

;Domain n > 0
(define nthprime (n)
	(subNthPrime 2 n 0))	
	
;m is defined aS the current number we are on
;n is defined as the number prime we intend to reach
;o is defined as the number of primes we have passed insofar
(define subNthPrime (m n o)
	(if (= (prime m) 1)
			(if (= (+ o 1) n)
				m
				(subNthPrime (+ m 1) n (+ o 1))
			)
			(subNthPrime (+ m 1) n o)
	)
)

(print 9999)
(print (= (nthprime 1) 2))
(print (= (nthprime 2) 3))
(print (= (nthprime 3) 5))
(print (= (nthprime 4) 7))
(print (= (nthprime 5) 11))
(print (= (nthprime 6) 13)) 

(define sumprimes (n) (subSumPrimes n 1))

;Let m be the target number of primes to be summed
;Let n be the n-designation of the prime to be added
(define subSumPrimes (m n)
	(if (< m n)
		0
		(+ (nthprime n) (subSumPrimes m (+ n 1))))) 

(print 9999)
(print (= (sumprimes 1) 2))
(print (= (sumprimes 2) 5))
(print (= (sumprimes 3) 10))
(print (= (sumprimes 4) 17))
(print (= (sumprimes 5) 28))
(print (= (sumprimes 6) 41))

(define relprime (m n)
	(= (gcd m n) 1)
)

(define gcd (m n)
	(if (= n 0)
		m
		(gcd n (mod m n))))

(print 9999)
(print (= (relprime 1 2) 1))
(print (= (relprime 2 3) 1))
(print (= (relprime 2 4) 0))
(print (= (relprime 15 4) 1))
(print (= (relprime 15 5) 0))
(print (= (relprime 27 36) 0))
