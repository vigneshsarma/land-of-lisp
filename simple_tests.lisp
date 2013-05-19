(progn
  (prin1 "this")
  (prin1 "is")
  (prin1 "a")
  (prin1 "test"))

(defun say-hello ()
  (print "Please type your name!!!: ")
  (let ((name (read-line)))
    (princ "Nice to meet you edited: ")
    (princ name)))

(defun test-princ ()
  (princ "this will print without quotes")
  (princ #\newline)
  (princ 2.1)
  (princ #\newline)
  (princ #\c))

;; writing to a file
(with-open-file (my-stream
                 "testfile.txt"
                 :direction :output
                 :if-exists :supersede)
  (princ "Hello File!" my-stream))

(with-open-file (my-stream
                 "testfile.txt"
                 :direction :output
                 :if-exists :supersede)
  (princ "Hello File!" my-stream))
