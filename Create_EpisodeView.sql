create view viewEpisodes as
select a.AuthorName, d.DoctorName, DoctorWho.fnCompanions(e.EpisodeId) as 'Companions',
       DoctorWho.fnEnemies(e.EpisodeId) as 'Enemies'
from Episode e
LEFT JOIN Author a on e.AuthorId = a.AuthorId
LEFT JOIN Doctor d on e.DoctorId = d.DoctorId;


