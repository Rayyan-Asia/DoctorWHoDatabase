create procedure DoctorWho.spSummariseEpisodes
as 
begin
	select top 3 c.CompanionName as 'Companion', Count(ec.EpisodeCompanionId) as 'Appearance Count'
	from Companion c left join EpisodeCompanion ec on c.CompanionId = ec.CompanionId
	group by c.CompanionName
	order by Count(ec.EpisodeCompanionId) Desc;

	select top 3 e.EnemyName as 'Enemy', COUNT(ee.EpisodeEnemyId) as 'Appearance Count'
    from Enemy e
    LEFT JOIN EpisodeEnemy ee on e.EnemyId = ee.EnemyId
    group by e.EnemyName
    order by COUNT(ee.EpisodeEnemyId) desc;

end;



