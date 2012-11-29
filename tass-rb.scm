;;=============================================;;
;;Developer: Roberto Cella                     ;;
;;Contact me via mail: rob.uniud@gmail.com     ;; 
;;Follow me on Twitter: www.twitter.com/rob93c ;;
;;=============================================;;

; Definire una procedura che permetta di capire quanti
; sono i possibili modi di piastrellare un tratto
; di lunghezza n con piastrelle rosse e blu, dove
; due rosse non possono stare vicine tra di loro.

(define tass-rb
  (lambda (n)
    (if (< n 2)
        (+ n 1)
        (+ (tass-rb (- n 1))
           (tass-rb (- n 2)))
        )
    )
  )