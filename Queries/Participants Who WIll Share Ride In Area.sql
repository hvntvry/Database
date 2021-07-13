Select Name, Phone
From Participant
Where ParticipantID in (Select ParticipantID
                        From CarSharing
                        Where Area="City Center" and Share="Yes"
                        )