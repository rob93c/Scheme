#lang Scheme

; Script in Scheme che consente di coniugare al participio passato i verbi regolari di tutte le coniugazioni.
; Basta dare il comando (participio-passato "verbo-da-coniugare") dal terminale di Racket e lo vedrete in funzione.  

(define coniug-ere?                             ; val: booleano
  (lambda (inf)                                 ; inf: stringa
    (char=?
     (string-ref inf (- (string-length inf) 3))
     #\e)
    )
  )
(define participio-passato-are-ire               ; val: stringa
  (lambda (inf)                                  ; inf: stringa
    (string-append
     (substring inf 0 (- (string-length inf) 2))
     "to")
    )
  )
(define participio-passato-ere                   ; val: stringa
  (lambda (inf)                                  ; inf: stringa
    (string-append
     (substring inf 0 (- (string-length inf) 3))
     "uto")
    )
  )
(define participio-passato                       ; val: stringa
  (lambda (inf)                                  ; inf: stringa
    (if (coniug-ere? inf)
        (participio-passato-ere inf)
        (participio-passato-are-ire inf)
        )
    )
  )