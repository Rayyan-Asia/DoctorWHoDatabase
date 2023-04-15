create function DoctorWho.fnCompanions (@EpisodeId INT)
returns varchar(MAX) as
begin
	Declare @episodeCompanions varchar(MAX) ='';
	Select  @episodeCompanions = @episodeCompanions + c.CompanionName + ', '
	from Companion c
	JOIN EpisodeCompanion ec ON c.CompanionId = ec.CompanionId 
	where ec.EpisodeId = @EpisodeId
	
	-- to remove any commas at the end
	IF LEN(@episodeCompanions) > 0
    SET @episodeCompanions = LEFT(@episodeCompanions, LEN(@episodeCompanions) - 2);
	
	return @episodeCompanions
end;


