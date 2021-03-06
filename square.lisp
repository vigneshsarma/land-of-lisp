(defun sqrshow (start end)
  (do ((i start (+ i 1)))
      ((> i end) 'finish)
    (format t "~A ~A~%" i (* i i))))
(defun inter-sqr ()
  (format t "Enter the 'start' and 'end' values: ")
  (let ((start (read))
        (end (read)))
    (sqrshow start end)))
(defun recur-sqr (start end)
  (if (< start end)
      (progn
        (format t "~A ~A~%" start (* start start))
        (recur-sqr (+ start 1) end))
    'done))
(inter-sqr)
(recur-sqr 1 10)
