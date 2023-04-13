use DoctorWho;
create table Enemy(
EnemyId int identity primary key,
EnemyName Varchar(32) not null,
Description Text not null,
);

create table EpisodeEnemy(
EpisodeEnemyId int identity primary key,
EpisodeId int not null,
EnemyId int not null
);

create table Episode(
EpisodeId int identity primary key,
SeriesNumber int not null,
EpisodeNumber int not null,
EpisodeType varchar(32) not null,
Title varchar(100) not null,
EpisodeDate date not null,
AuthorId int not null,
DoctorId int,
Notes text null
);

create table Author(
AuthorId int identity primary key,
AuthorName varchar(64) not null
);

create table EpisodeCompanion(
EpisodeCompanionId int identity primary key,
EpisodeId int not null,
CompanionId int not null
);

create table Companion(
CompanionId int identity primary key,
CompanionName varchar(64) not null,
WhoPlayed varchar(64) not null
);

create table Doctor(
DoctorId int identity primary key,
DoctorNumber int not null,
DoctorName varchar(64) not null,
BirthDate date not null,
FirstEpisodeDate date not null,
LastEpisodeDate date 
);


Alter table EpisodeEnemy add Constraint FK_EpisodeEnemy_Enemy Foreign key(EnemyId) references Enemy(EnemyId);
Alter table EpisodeEnemy add Constraint FK_EpisodeEnemy_Episode Foreign key(EpisodeId) references Episode(EpisodeId);

alter table Episode add constraint FK_Episode_Author foreign key(AuthorId) references Author(AuthorId);
alter table Episode add constraint FK_Episode_Doctor foreign key(DoctorId) references Doctor(DoctorId);


Alter table EpisodeCompanion add Constraint FK_EpisodeCompanion_Episode Foreign key(EpisodeId) references Episode(EpisodeId);
Alter table EpisodeCompanion add Constraint FK_EpisodeCompanion_Companion Foreign key(CompanionId) references Companion(CompanionId);

Alter table Doctor add constraint Check_Doctor_FirstEpisodeDate_Before_LastEpisodeDate check(FirstEpisodeDate < LastEpisodeDate);
