;;=============================================;;
;;Developer: Roberto Cella                     ;;
;;Contact me via mail: rob.uniud@gmail.com     ;; 
;;Follow me on Twitter: www.twitter.com/rob93c ;;
;;=============================================;;

(define num-percorsi    ; val: intero
  (lambda (x y)         ; x,y: interi
    (cond ((= x 0)
           (+ x 1))
          ((= y 0)
           (+ y 1))
          ((and (> x 0) (> y 0))
           (+ (num-percorsi (- x 1) y)
              (num-percorsi x (- y 1))))
          )
    )
  )