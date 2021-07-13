Select DOW, Sum(TotalParticipants) as TotalParticipants
From (Select TimeTable.DOW, TimeTable.CourseName, AttendanceTable.TotalParticipants
	From TimeTable
INNER JOIN (Select CourseName, COUNT(ParticipantID) as TotalParticipants
			From Attend
			Group By CourseName
			) as AttendanceTable ON  TimeTable.CourseName=AttendanceTable.CourseName) as TotalForClasses
Group By DOW
      

