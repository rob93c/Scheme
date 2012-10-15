#lang Scheme

; Con questo script potrai calcolare la soluzione massima di un'equazione di secondo grado, dati i coefficenti della stessa.
; Per usarlo: (sol-eq-grado-2 valore-di-a valore-di-b valore-di-c). Per calcolare il risultato di un'equazione di primo grado basta imporre a=0.

(define sol-eq-grado-2                                      ; val: reale
  (lambda (a b c)                                           ; a, b, c: reali
    (if (= a 0)
        (- (/ c b))                                         ; caso degenere in cui a=0 e quindi si ha un'equazione di primo grado
        (/ (- (sqrt (- (* b b) (* 4 a c))) b) (* 2 a))
        )
    )
  )