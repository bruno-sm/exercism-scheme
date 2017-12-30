(define-module (hamming)
  #:export (hamming-distance))


(define (hamming-distance dna1 dna2)
  (hamming-distance* dna1 dna2 0))

(define (hamming-distance* dna1 dna2 dist)
  (cond ((not (= (string-length dna1) (string-length dna2))) <error>)
	((= (string-length dna1) 0) dist)
	(else (hamming-distance*
		(substring dna1 1)
		(substring dna2 1)
		(+ (if (char=? (string-ref dna1 0) (string-ref dna2 0)) 0 1) dist)))))
