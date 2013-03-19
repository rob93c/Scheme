(define new-round-table ; val: configurazioni
  (lambda (n)           ; n: interi
    (subrange 1 n)
    ))

(define subrange ; val: lista
  (lambda (n k)  ; n,k: interi
    (if (> n k)
        null
        (append (list n) (subrange (+ n 1) k)))
    ))

(define two-serving-knights-in ; val: lista
  (lambda (tab)                ; tab: tavole-rotonde
    (cons (car tab) (list (cadr tab)))
    ))

(define after-next-exit-from ; val: configurazioni
  (lambda (tab)              ; tab: tavole-rotonde
    (append 
     (cdddr tab)
     (cons (car tab) (list (cadr tab))))
    ))

(define count   ; val: tavole-rotonde
  (lambda (tab) ; tab: tavole-rotonde
    (if (last-knights-in? tab)
        tab
        (count (after-next-exit-from tab)))
    ))
         
(define last-knights-in? ;val: booleano
  (lambda (tab)          ;tab: tavola-rotonda
    (null? (cddr tab))
    ))

(define gflavio ; val: etichetta
  (lambda (n)   ; n: interi
    (two-serving-knights-in (count (new-round-table n)))
    ))