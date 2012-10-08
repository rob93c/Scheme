#lang racket

(define sup-tot-cono                                      ; val: reale
  (lambda (r h)                                           ; var: reali
    (* (* 3.14159 r) (+ r (sqrt(+ (* h h) ( * r r))
                               )
                        )
       )
    )
  )