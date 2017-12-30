(define-module (bob)
  #:export (response-for))


(define (response-for sentence)
  (cond ((yell? sentence) "Whoa, chill out!")
        ((question? sentence)  "Sure.")
	((silence? sentence) "Fine. Be that way!")
	(else "Whatever.")))

(define (question? sentence)
  (string-suffix? "?" sentence))

(define (yell? sentence)
  (and (reduce and-l #t (map char-upper-notalpha? (string->list sentence)))
       (reduce or-l #f (map char-upper-case? (string->list sentence)))))

(define (char-upper-notalpha? char)
  (or (char-upper-case? char)
      (not (char-alphabetic? char))))

(define (silence? sentence)
  (or (= 0 (string-length sentence))
      (reduce and-l #t (map (lambda (char) (char=? #\space char)) (string->list sentence)))))

(define (and-l a b) (and a b))

(define (or-l a b) (or a b))

(define (reduce fun val lis)
  (cond ((null? lis) val)
	(else (reduce fun (fun val (car lis)) (cdr lis)))))
