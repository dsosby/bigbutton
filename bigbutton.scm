(use awful
     ersatz-lib)

(enable-sxml #t)

(define (get-greeting-string salutation #!optional [name "World"])
  (string-append salutation ", " name))

(define-page (main-page-path)
  (lambda ()
    (get-greeting-string "Hello" ($ 'person "world"))))
