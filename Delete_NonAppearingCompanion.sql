use DoctorWho;

Delete c
from Companion c
LEFT JOIN EpisodeCompanion ec ON c.CompanionId = ec.CompanionId
where ec.CompanionId IS NULL
GO

Delete from Companion 
where CompanionId 
not in(Select Distinct CompanionID from EpisodeCompanion);
Go
