(setq students
  (list 
    (list 'Johnny 1 'Texas '(6 7)) ;; Structure is name, course, university, list of points
    (list 'Ivan 2 'Harvard '(10 10))
    (list 'Peter 2 'Centucky '(10 6))
    (list 'Billy 3 'Iowa '(6 5))
    (list 'Filly 4 'Arkansas '(2 3))
  )
)

(defun getAveragePointsFromDayOne(students)
  (setq result 0)
  (dolist (student students)
    (setq result (+ result (caar (last student))))
  )
  (return-from getAveragePointsFromDayOne (/ result (length students)))
)

(defun printStudentsWithMoreThanAverage(students)
  (setq average (getAveragePointsFromDayOne students))
  (dolist (student students)
    (cond 
      (
        (<= average (caar (last student)))
        (format T "~s from ~s" (car student) (caddr student))
        (terpri)
      )
    )
  )
)

(printStudentsWithMoreThanAverage students)
