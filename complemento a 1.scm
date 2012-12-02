;;=============================================;;
;;Developer: Roberto Cella                     ;;
;;Contact me via mail: rob.uniud@gmail.com     ;; 
;;Follow me on Twitter: www.twitter.com/rob93c ;;
;;=============================================;;

(define first-char
  (lambda (n)
    (substring n 0 1)
    )
  )

(define tail
  (lambda (n)
    (substring n 1 (string-length n))
    )
  )

(define compl-1
  (lambda (n)
    (cond ((= (string-length n) 0)
           "La stringa è vuota.")
          ((= (string-length n) 1)
           (cond ((string=? (first-char n) "0")
                  "1")
                 ((string=? (first-char n) "1")
                  "0")))
          (else (string-append
                 (compl-1 (first-char n))
                 (compl-1 (tail n))))
          )
    )
  )

; Per fare il complemento a 1 di una stringa di numeri binari digita il comando (compl-1 "numero_binario") in DrRacket.