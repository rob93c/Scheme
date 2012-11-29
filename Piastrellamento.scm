;;=============================================;;
;;Developer: Roberto Cella                     ;;
;;Contact me via mail: rob.uniud@gmail.com     ;; 
;;Follow me on Twitter: www.twitter.com/rob93c ;;
;;=============================================;;

; Definire una procedura che permetta di capire quanti
; sono i possibili modi di piastrellare un tratto
; di lunghezza n con piastrelle rosse e blu, dove
; due rosse non possono stare vicine tra di loro:

(define tass-rb    ; val: intero
  (lambda (n)      ; n >= 0 intero
    (if (< n 2)
        (+ n 1)
        (+ (tass-rb (- n 1))
           (tass-rb (- n 2)))
        )
    )
  )
  
; Definire una procedura che permetta di capire quanti
; sono i possibili modi di piastrellare un tratto
; di lunghezza n con piastrelle , dove ci sono due tipi
; di piastrelle: uno di lunghezza 1 e l'altro 2:

(define tass-pq    ; val: intero
  (lambda (n)      ; n >= 0 intero
    (cond ((= n 0)
           (+ n 1))
          ((= n 1)
           n)
          (else (+ (tass-pq (- n 1))
                   (tass-pq (- n 2))))
          )
    )
  )