#lang Scheme

; Insieme di procedure che permettono di trovare il plurale di un nome a partire dalla sua forma al singolare.
; Per utilizzare il codice digitare (plurale "parola") nel terminale integrato in Racket.

(define chk-last                                        ; val: booleano
  (lambda (word)                                        ; word: stringa
    (char=?
     (string-ref word (- (string-length word) 1))
     #\o)
    (char=?
    (string-ref word (- (string-length word) 1))
    #\e)
    )
  )
(define plurale-m                                       ; val: stringa
  (lambda (word)                                        ; word: stringa
    (string-append
     (substring word 0 (- (string-length word) 1))
     "i")
    )
  )
(define plurale-f                                       ; val: stringa
  (lambda (word)                                        ; word; stringa
    (string-append
     (substring word 0 (- (string-length word) 1))
     "e")
    )
  )
(define plurale                                         ; val: stringa
  (lambda (word)                                        ; word: stringa
    (if (chk-last word)
        (plurale-m word)
        (plurale-f word)
        )
    )
  )