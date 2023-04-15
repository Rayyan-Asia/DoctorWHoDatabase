use DoctorWho;
update Episode set Title = Concat(Title,'_Cancelled') where DoctorId IS NULL;
Go	