;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname word-uppercase) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;================================================================================;;
;;Developer: Roberto Cella                                                        ;;
;;Contact me via mail: rob.uniud@gmail.com                                        ;; 
;;Follow me on Twitter: www.twitter.com/rob93c                                    ;;
;;================================================================================;;

(define word-uppercase                                          ; val: string
  (lambda (word)                                                ; word: string
    (cond ((blank? word)
           "")
          ((lowercase? (first-letter word))
           (string-append
            (string (lowercase->uppercase (first-letter word)))
                          (word-uppercase (tail word))))
          ((char=? (string-ref word 0) #\space)
           (string-append
            " "
            (word-uppercase (tail word))))
          (else                                                 ; if uppercase
           (string-append
            (string (first-letter word))
            (word-uppercase (tail word))
            ))
          )
    )
  )

(define first-letter                                            ; val: char
  (lambda (word)                                                ; word: string 
    (string-ref word 0)
    )
  )

(define tail                                                    ; val: string
  (lambda (word)                                                ; word: string
    (substring word 1 (string-length word))
    )
  )

(define blank?                                                  ; val: boolean
  (lambda (word)                                                ; word: string
    (cond ((= (string-length word) 0)
           true)
          (else false))
    )
  )

(define uppercase                                               ; val: char
  (lambda (lett)                                                ; lett: char
    (integer->char (- (char->integer lett) 32))
    )
  )

(define lowercase->uppercase                                    ; val: char
  (lambda (lett)                                                ; lett: char
    (if (lowercase? lett)
        (uppercase lett)
        (string lett)
        )
    )
  )

(define lowercase?                                              ; val: boolean
  (lambda (lett)                                                ; lett: char
    (if (>= (char->integer lett) 97)
        true
        false)
    )
  )