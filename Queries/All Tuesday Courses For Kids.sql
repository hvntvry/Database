SELECT CourseName
FROM Course
WHERE Age = "Kids" and CourseName IN (SELECT CourseName
									  FROM TimeTable
									   WHERE DOW = "Tuesday"
									  )