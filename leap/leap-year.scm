(define-module (leap-year)
  #:export (leap-year?))


(define (leap-year? year)
  (or (and (= (modulo year 4) 0) (not (= (modulo year 100) 0))) (= (modulo year 400) 0)))
