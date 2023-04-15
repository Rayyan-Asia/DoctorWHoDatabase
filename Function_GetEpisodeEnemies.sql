create function DoctorWho.fnEnemies (@EpisodeId INT)
returns varchar(MAX) as
begin
	Declare @episodeEnemies varchar(MAX) ='';
	Select  @episodeEnemies = @episodeEnemies + e.EnemyName + ', '
	from Enemy e
	JOIN EpisodeEnemy ee ON e.EnemyId = ee.EnemyId 
	where ee.EpisodeId = @EpisodeId
	
	-- to remove any commas at the end
	IF LEN(@episodeEnemies) > 0
    SET @episodeEnemies = LEFT(@episodeEnemies, LEN(@episodeEnemies) - 1);
	
	return @episodeEnemies
end;

