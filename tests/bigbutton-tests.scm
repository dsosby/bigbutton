(use test)
(load "bigbutton.scm")

(test-begin
  (test '() (as-model '()))
  (test '((content . "Hello")) (as-model "Hello"))
  (test '((content . "Hello")) (as-model '((content . "Hello")))))


(test-exit)
