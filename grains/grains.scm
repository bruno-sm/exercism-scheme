(define-module (grains)
  #:export (square total)
  #:autoload (srfi srfi-1) (iota))

(define (square n)
  (expt 2 (- n 1)))

; The result is the geometric series \sum_{i=0}^{n-1} 2^i =
; = (1 - 2^n)/(1 - 2) =  2^n - 1 
(define (total)
  (- (expt 2 64) 1))
