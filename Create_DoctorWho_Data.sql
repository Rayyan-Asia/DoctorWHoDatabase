use DoctorWho;
insert into Author(AuthorName) values('Rayyan Asia'),
('Raneen Asia'),
('Rami Asia'),
('Reema Asia'),
('Karam Shawish');
GO

insert into Enemy(EnemyName, Description) values('The Master', 'Fellow Time Lord that constantly tries to torment and destroy the doctor.'),
('Family of Blood', 'Beings that chased The Doctor for near immortality.'),
('Daleks', 'These robots have plagued the Doctor for centuries.'),
('Cybermen', 'Emotionless robots from another world that constantly change their design, becoming more powerful, and upgrading every time we see them.'),
('Weeping Angels', 'Horrifying stone statues that have a pretty scary design, but the real fear is how these creatures move and kill their prey.');
GO 

insert into Companion(CompanionName,WhoPlayed) values
('Dr. Grace Hollow','Daphne Ashbrook'),
('Elizabeth Shaw','Caroline John'),
('Ace','Sophie Aldred'),
('Captain Mike Yates','Richard Franklin'),
('Melanie','Bonnie Langford'),
('TuTu','Tawfieg');
GO

insert into Doctor(DoctorNumber,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate) 
values
(1,'David Tennant','1980-01-20','2010-5-10','2013-10-10'),
(2,'Matt Smith','1990-01-20','2016-5-10','2017-10-10'),
(3,'Peter Capaldi','1985-01-20','2018-1-10','2018-10-10'),
(4,'Christopher Eccleston','1992-01-20','2018-11-10','2019-10-10');
Go
insert into Doctor(DoctorNumber,DoctorName,BirthDate,FirstEpisodeDate) 
values(5,'Jodie Whittaker','1990-01-20','2020-5-10');
GO

insert into Episode(SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
values (1,1,'Comedy,Eerie','Pilot','2010-5-10',1,1,'The Best Doctor IMO'),
(2,1,'Comedy,Eerie,Investigation','The Second Doctor','2016-5-10',2,2,'Longest Production Episode'),
(3,1,'Comedy,Action','Back to the Booth','2018-1-10',3,3,null),
(4,1,'Comedy,Detective','Another Doctor','2018-11-10',4,4,null),
(5,1,'Comedy,Eerie','Time Is Not So Simple','2020-5-10',5,5,'New Cast Who Dis?'),
(1,2,'Comedy,Eerie','Our Fist Encounter','2010-6-10',1,null,'No Doctor');
GO

insert into EpisodeEnemy(EpisodeId,EnemyId) values
(1,1),(2,2),(3,3),(4,4),(5,5),(1,2);
GO
insert into EpisodeCompanion(EpisodeId,CompanionId) values
(1,1),(2,2),(3,3),(4,4),(5,5),(1,2);
GO
