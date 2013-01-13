(defun update-val (val total)
  (+ val (* 100.0 (/ val total))))

(defun travel (behind ahead time elastic_band speed_of_ant)
  (format 't "behind: ~A ahead: ~A time: ~A~%" behind ahead time)
  (if (= ahead 0)
      time
    (let ((n-ahead (- ahead speed_of_ant))
          (n-behind (+ behind speed_of_ant)))
      (travel (update-val n-behind elastic_band) (update-val n-ahead elastic_band)
              (+ 1 time) (+ 100.0 elastic_band) speed_of_ant))))

(travel 0.0 100.0 0 100.0 1.0)
