SELECT Name, Surname, Phone
FROM Participant
WHERE ParticipantID IN (SELECT ParticipantID 
						FROM Attend
						GROUP BY ParticipantID
                        HAVING COUNT(CourseName) = 2 
                        )