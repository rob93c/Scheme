#lang racket
(define conv-lire-euro ; val: reale
  (lambda (n)          ; val: reale  
    (/ n 1936.27)))
(define conv-euro-lire ; val: reale
  (lambda (m)          ; val: reale
    (* m 1936.27)))