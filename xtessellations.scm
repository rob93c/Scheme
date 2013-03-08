(define xtessellations ; val: intero > 0
  (lambda (n k)        ; n,k: interi >=0
    (cond ((= k 0) 1)
          ((= k 1) n)
          ((= n 0) 1)
          ((= n 1) n)
          (else 
           (+ (xtessellations (- n 1) k)
              (xtessellations (- n 2) (- k 1))))
          )
    )
  )