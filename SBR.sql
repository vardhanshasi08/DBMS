create database SBR
create table Sailors
(
Sailor_Id     int            primary key,
Sailor_Name   varchar(20)    not null,
Rating        float          not null,
Age           int            not null
)
insert into Sailors values(101,'Sushanth',9.5,28)
insert into Sailors values(102,'Ranganathan',8.7,25)
insert into Sailors values(103,'Sai',8.8,21)


create table Reserves
(
Boat_Id     int    primary key,
Sailor_Id   int    foreign key references Sailors(Sailor_Id),
Date        date   not null
)
insert into Reserves values(201,101,'2026-08-20')
insert into Reserves values(202,102,'2026-08-21')
insert into Reserves values(203,103,'2026-08-22')
insert into Reserves values(204,103,'2026-08-20')
insert into Reserves values(205,103,'2026-08-21')


create table Boats
(
Boat_Id     int           foreign key references Reserves(Boat_Id),
Boat_name   varchar(20)   primary key,
Color       varchar(15)   not null,
)
insert into Boats values(201,'Garuda','Brown')
insert into Boats values(202,'Nandi','White')
insert into Boats values(203,'Airavat','Blue')


select * from Sailors
select * from Reserves
select * from Boats

drop table Boats
drop table Reserves
drop table Sailors

