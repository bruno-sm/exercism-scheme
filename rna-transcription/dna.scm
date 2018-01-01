(define-module (dna)
  #:export (to-rna))


(define (to-rna dna)
  (define (to-rna* dna rna)
    (if (string-null? dna) rna 
      (let ((nuc 
	      (cond ((char=? (string-ref dna 0) #\G) "C")
	            ((char=? (string-ref dna 0) #\C) "G")
	            ((char=? (string-ref dna 0) #\T) "A")
	            ((char=? (string-ref dna 0) #\A) "U")
		    (else (error "invalid dna nucleotid")))))
	(to-rna* (substring dna 1) (string-append rna nuc)))))
  (to-rna* dna ""))
