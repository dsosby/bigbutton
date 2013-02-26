(use awful)

(enable-sxml #t)

(define (get-greeting-string salutation #!optional [name "Pete"])
  (string-append salutation ", " name))

(define-page (main-page-path)
  (lambda ()
    "Hello, World!"))
