#lang racket

(define metti-al-participio-are                         ; val:   stringa
  (lambda (verbo)                                       ; verbo: stringa
    (string-append
     (substring verbo 0 (- (string-length verbo) 3))
     "ato")
    )
  )

(define metti-al-participio-ire                         ; val:   stringa
  (lambda (verbo)                                       ; verbo: stringa
    (string-append
     (substring verbo 0 (- (string-length verbo) 3))
     "ito")
    )
  )