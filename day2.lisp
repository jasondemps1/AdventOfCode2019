(defun part2 ()
  (labels ((fuel-eq (x)
	     (- (floor (/ (parse-integer x) 3)) 2)))
    (with-open-file (stream "C:\\Users\\jadempse\\Documents\\Projects\\aoc19\\input-1.txt")
      (do ((line (read-line stream) (read-line stream nil 'eof))
	   (mass 0))
	  ((eq line 'eof) mass)
	(setf mass (+ mass (- (floor (/ (parse-integer line) 3)) 2))))))
  
