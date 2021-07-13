Select Name, Surname
From Teacher
Where SSN in (Select TeacherID
              From Course
              Where CourseName in (Select CourseName as Name
                             From Attend
                             Group By CourseName
                             Having COUNT(ParticipantID) >= 8
                            )
              )
