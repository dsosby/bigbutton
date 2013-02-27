(use awful)
(include "ezersatz.scm")
(import ezersatz)

(enable-sxml #f)

;; Fill the template with the given data
(define (standard-page data #!optional (file "index.tmpl") (page-title "BigButton"))
  (lambda () 
    (ezersatz file
	      (if (string? data) `((content . ,data) (page_title . ,page-title))
				 (alist-cons 'page_title page-title data)))))

(define (get-greeting-string salutation #!optional [name "World"])
  (string-append salutation ", " name))

(define-page (main-page-path)
  (standard-page (get-greeting-string "Hello" "world")))
