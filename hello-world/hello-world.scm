(define-module (hello-world)
  #:export (hello))

(define* (hello #:optional (word "World"))
	 (string-append "Hello, " word "!"))
