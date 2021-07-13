Select Cost
From PriceList
Where Exists (Select *
              From (Select Count(CourseName) as CourseTotal, Sum(CourseCount) as WeeklyTotal
                    From (Select CourseName, Count(CourseName) as CourseCount
                          From TimeTable
                          Group By CourseName
                          Having CourseName in (Select CourseName
                                                From Attend
                                                Where ParticipantID="B2")
                          ) as CountTable
                    ) as TotalTable
              Where PriceList.CourseTotal=TotalTable.CourseTotal and PriceList.WeeklyTotal=TotalTable.WeeklyTotal)
