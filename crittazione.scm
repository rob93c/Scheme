(define crittazione
  (lambda (msg regola)
    (if (string=? msg "")
        ""
        (string-append
         (string (regola (string-ref msg 0)))
         (crittazione (substring msg 1) regola))
        )
    )
  )

(define codice-cesare
  (lambda (r)
    (lambda (c)
      (let ((x (+ (char->integer c) r)))
        (if (> x (char->integer #\Z))
            (integer->char (- x 26))
            (integer->char x)
            )
        )
      )
    )
  )
