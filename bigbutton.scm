(use awful)
(include "ezersatz.scm")
(import ezersatz)

(enable-sxml #f)
(when (development-mode?)
  (debug-file "debug.log"))

;; Fill the template with the given data
(define (standard-page data #!optional (file "index.tmpl") (page-title "BigButton"))
    (ezersatz file
	      (if (string? data) `((content . ,data) (page_title . ,page-title))
				 (alist-cons 'page_title page-title data))))

(define (get-greeting-string salutation #!optional [name "World"])
  (string-append salutation ", " name))

(define-page (main-page-path)
  (lambda () 
    (let* ([whom ($ 'whom "world")]
	   [greeting (get-greeting-string "Hello" whom)])
      (debug whom)
      (standard-page greeting))))
