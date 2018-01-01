(define-module (dna)
  #:export (to-rna))


(define (to-rna dna)
  (string-map (lambda (nuc)
		(cond ((char=? nuc #\G) #\C)
		      ((char=? nuc #\C) #\G)
	              ((char=? nuc #\T) #\A)
	              ((char=? nuc #\A) #\U)))
	      dna))
