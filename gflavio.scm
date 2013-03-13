(define gflavio ;val: etichetta
  (lambda (n)   ;n: intero
    (knight-with-jug-in (conta (round-table n)))
    ))

(define conta   ;val: tavola-rotonda
  (lambda (tab) ;tab: tavola-rotonda
    (if (last-knight-in? tab)
        tab
        (conta (after-next-exit-from tab)))
    ))

(define round-table ;val: tavola-rotonda
  (lambda (n)       ;n: intero
    (subrange 1 n)
    ))

(define subrange ;val: lista
  (lambda (n k)  ;n,k: interi
    (if (> n k)
        null
        (append (list n) (subrange (+ n 1) k)))
    ))

(define last-knight-in? ;val: booleano
  (lambda (tab)         ;tab: tavola-rotonda
    (null? (cdr tab))
    ))

(define knight-with-jug-in car)

(define after-next-exit-from ;val: tavola-rotonda
  (lambda (tab)              ;tab: tavola-rotonda
    (append
     (cddr tab)
     (list (car tab)))
    ))
