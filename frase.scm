;;================================================================================;;
;;Developer: Roberto Cella                                                        ;;
;;Contact me via mail: rob.uniud@gmail.com                                        ;; 
;;Follow me on Twitter: www.twitter.com/rob93c                                    ;;
;;================================================================================;;

(define sogg-m-sin?
  (lambda (nome)
    (cond ((char=? (string-ref nome (- (string-length nome) 1)) #\o)
           true)
          (else false))
    )
  )

(define sogg-m-plu?
  (lambda (nome)
    (cond ((char=? (string-ref nome (- (string-length nome) 1)) #\i)
           true)
          (else false))
    )
  )

(define sogg-f-sin?
  (lambda (nome)
    (cond ((char=? (string-ref nome (- (string-length nome) 1)) #\a)
           true)
          (else false))
    )
  )

(define sogg-f-plu?
  (lambda (nome)
    (cond ((char=? (string-ref nome (- (string-length nome) 1)) #\e)
           true)
          (else false))
    )
  )

(define are?
  (lambda (verbo)
    (cond ((char=? (string-ref verbo (- (string-length verbo) 3)) #\a)
           true)
          (else false))
    )
  )

(define ere?
  (lambda (verbo)
    (cond ((char=? (string-ref verbo (- (string-length verbo) 3)) #\e)
           true)
          (else false))
    )
  )

(define ire?
  (lambda (verbo)
    (cond ((char=? (string-ref verbo (- (string-length verbo) 3)) #\i)
           true)
          (else false))
    )
  )

(define ogg-m-sin?
  (lambda (ogg)
    (cond ((char=? (string-ref ogg (- (string-length ogg) 1)) #\o)
           true)
          (else false))
    )
  )

(define ogg-m-plu?
  (lambda (ogg)
    (cond ((char=? (string-ref ogg (- (string-length ogg) 1)) #\i)
           true)
          (else false))
    )
  )

(define ogg-f-sin?
  (lambda (ogg)
    (cond ((char=? (string-ref ogg (- (string-length ogg) 1)) #\a)
           true)
          (else false))
    )
  )

(define ogg-f-plu?
  (lambda (ogg)
    (cond ((char=? (string-ref ogg (- (string-length ogg) 1)) #\e)
           true)
          (else false))
    )
  )

;=================================================================

(define name
  (lambda (nome)
    (cond ((sogg-m-sin? nome)
           (string-append 
            "Il " (substring nome 0 (string-length nome))))
          ((sogg-m-plu? nome)
           (string-append
            "I " (substring nome 0 (string-length nome))))
          ((sogg-f-sin? nome)
           (string-append
            "La " (substring nome 0 (string-length nome))))
          ((sogg-f-plu? nome)
           (string-append
            "Le " (substring nome 0 (string-length nome))))
          (else "Il nome non è corretto."))
    )
  )

;=================================================================

(define coniug
  (lambda (verbo nome)
    (cond ((are? verbo)
           (cond ((sogg-m-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "a"))
                 ((sogg-f-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "a"))
                 ((sogg-m-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ano"))
                 ((sogg-f-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ano"))))
          ((ere? verbo)
           (cond ((sogg-m-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "e")) 
                 ((sogg-f-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "e"))
                 ((sogg-m-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ono"))
                 ((sogg-f-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ono"))))
          ((ire? verbo)
           (cond ((sogg-m-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "e")) 
                 ((sogg-f-sin? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "e"))
                 ((sogg-m-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ono"))
                 ((sogg-f-plu? nome)
                  (string-append
                   (substring verbo 0 (- (string-length verbo) 3)) "ono"))))
          )
    )
  )

;=================================================================

(define obj
  (lambda (ogg)
    (cond ((ogg-m-sin? ogg)
           (string-append
            "il " (substring ogg 0 (string-length ogg))))
          ((ogg-m-plu? ogg)
           (string-append
            "i " (substring ogg 0 (string-length ogg))))
          ((ogg-f-sin? ogg)
           (string-append
            "la " (substring ogg 0 (string-length ogg))))
          ((ogg-f-plu? ogg)
           (string-append
            "le " (substring ogg 0 (string-length ogg))))
          (else "ERRORE")
          )
    )
  )

;=================================================================

(define frase
  (lambda (nome verbo ogg)
    (string-append
     (string-append
      (string-append (name nome) " ") (string-append (coniug verbo nome) " ")) (obj ogg))
    )
  )