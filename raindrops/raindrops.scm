(define-module (raindrops)
  #:export (convert))


(define (convert n)
  (let ((str ""))
    (set! str (string-append str (if (= (modulo n 3) 0) "Pling" "")))
    (set! str (string-append str (if (= (modulo n 5) 0) "Plang" "")))
    (set! str (string-append str (if (= (modulo n 7) 0) "Plong" "")))
    (if (= 0 (string-length str)) (number->string n) str)))
