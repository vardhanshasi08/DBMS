create database BookMyShow02
create table Customer
(
Customer_Id         int          primary key,
Customer_Name       varchar(20)  not null,
Customer_Mobile     bigint       not null,
Customer_Email      varchar(30)  not null,
City                char(20)     not null
)
insert into Customer values(101,'Ram',9876543210,'ram101@gmail.com','Ayodhya')
insert into Customer values(102,'Sita',9876543211,'sita102@gmail.com','Janakpur')
insert into Customer values(103,'Parvathi',9876543212,'parvathi103@gmail.com','Varanasi')
insert into Customer values(104,'Shiva',9876543213,'shiva104@gmail.com','Varanasi')
insert into Customer values(105,'Ganesh',9876543214,'ganesh105@gmail.com','Kanipakam')
insert into Customer values(106,'Karthikeya',9876543215,'karthikeya106@gmail.com','Palani')
insert into Customer values(107,'Vishnu',9876543216,'vishnu107@gmail.com','Sri Rangam')
insert into Customer values(108,'Lakshmi',9876543217,'lakshmmi108@gmail.com','Sri Rangam')
insert into Customer values(109,'Saraswathi',9876543218,'saraswathi109@gmail.com','Basara')
insert into Customer values(110,'Venkateswara',9876543219,'venkateswara110@gmail.com','Tirumala')
insert into Customer values(111,'Padmavathi',9876543220,'Padmavathi111@gmail.com','Tiruchanur')
insert into Customer values(112,'Krishna',9876543221,'krishna112@gmail.com','Mathura')
insert into Customer values(113,'Raghavendra',9876543222,'raghavendra113@gmail.com','Mantralayam')
insert into Customer values(114,'Ekambareswar',9876543223,'ekambareswar114@gmail.com','Kanchipuram')
insert into Customer values(115,'Kamakshi',9876543224,'kamakshi115@gmail.com','Kanchipuram')


create table Movie
( 
Movie_Id      int            primary key,
Movie_Name    varchar(30)    not null,
Language      char(20)       not null,
Genre         varchar(30)    not null,
Duration      time           not null
)
insert into Movie values(201,'Gabbar Singh','Telugu','Action Comedy','2:30')
insert into Movie values(202,'Attarintiki Daredi','Telugu','Family Drama','3:00')
insert into Movie values(203,'Tholi prema','Telugu','Romantic Drama','2:20')
insert into Movie values(204,'OG','Telugu','Crime,Action Thriller','2:30')
insert into Movie values(205,'Kushi','Telugu','Romantic Comedy','2:50')


create table Theatre(
Theatre_Id          int           primary key,
Theatre_Name        varchar(20)   not null,
Theatre_Location    varchar(30)   not null,
Theatre_City        char(15)      not null,
Theatre_Screens     int           not null
)
insert into Theatre values(301,'CS Devendra','Leela Mahal Road','Tirupati',1)
insert into Theatre values(302,'Spice Cinemas','Dargamitta','Nellore',5)
insert into Theatre values(303,'Ratnamahal','Bhagya Nagar','Ongole',1)
insert into Theatre values(304,'Inox','Gandhi Road','Vijayawada',3)
insert into Theatre values(305,'PGR Cinemas','Tata Nagar','Tirupati',1)
insert into Theatre values(306,'Siri Square','Ramji Nagar','Nellore',4)
insert into Theatre values(307,'Gorantla Cinemas','Gopal Nagar','Ongole',4)
insert into Theatre values(308,'Capital Cinemas','Benz Circle','Vijayawada',7)
insert into Theatre values(309,'NVR Jayasyam','Jayasyam Road','Tirupati',1)
insert into Theatre values(310,'SV Cineplex','DR Mahal Road','Tirupati',1)


create table Show(
Show_Id        int      primary key,
Movie_Id       int      foreign key references Movie(Movie_Id),
Theatre_Id     int      foreign key references Theatre(Theatre_Id ),
Show_Date      date     not null,      
Time           time     not null
)
insert into Show values(401,201,301,'2026-08-20','11:30 AM')
insert into Show values(402,202,302,'2026-08-21','8:30 AM')
insert into Show values(403,203,303,'2026-08-21','11:30 AM')
insert into Show values(404,204,304,'2026-08-19','2:45 PM')
insert into Show values(405,205,305,'2026-08-22','5:30 PM')
insert into Show values(406,201,306,'2026-08-21','6:00 PM')
insert into Show values(407,202,307,'2026-08-22','9:30 PM')
insert into Show values(408,203,308,'2026-08-22','9:00 AM')
insert into Show values(409,204,309,'2026-08-22','11:45 AM')
insert into Show values(410,205,310,'2026-08-23','2:45 PM')


create table Booking(
Booking_Id       int     primary key,
Customer_Id      int     foreign key references Customer(Customer_Id),
Show_Id          int     foreign key references Show(Show_Id),
Seats            int     not null,
Booking_Date     date    not null
)
insert into Booking values(501,101,401,2,'2026-08-20')
insert into Booking values(502,104,402,2,'2026-08-21')
insert into Booking values(503,105,403,4,'2026-08-21')
insert into Booking values(504,106,404,4,'2026-08-19')
insert into Booking values(505,107,405,2,'2026-08-22')
insert into Booking values(506,109,406,1,'2026-08-21')
insert into Booking values(507,110,407,2,'2026-08-22')
insert into Booking values(508,112,408,1,'2026-08-22')
insert into Booking values(509,113,409,1,'2026-08-22')
insert into Booking values(510,114,410,2,'2026-08-23')


create table Payment(
Payment_Id        int          primary key,
Booking_Id        int          foreign key references Booking(Booking_Id),
Amount            int          not null,
Payment_Type      varchar(30)  not null,
Payment_Status    char(15)     not null
)
insert into Payment values(601,501,300,'Card','Processing')
insert into Payment values(602,502,300,'Netbanking','Success')
insert into Payment values(603,503,600,'UPI','Success')
insert into Payment values(604,504,600,'Gift Card/Promo code','Processing')
insert into Payment values(605,505,300,'Card','Success')
insert into Payment values(606,506,150,'UPI','Success')
insert into Payment values(607,507,300,'Gift Card/Promo code','Success')
insert into Payment values(608,508,150,'Card','Failed')
insert into Payment values(609,509,150,'UPI','Success')
insert into Payment values(610,510,300,'UPI','Processing')


select * from Customer
select * from Movie 
select * from Theatre
select * from Show
select * from Booking
select * from Payment


drop table Customer
drop table Movie
drop table Theatre
drop table Show
drop table Booking
drop table Payment

--0-70 Queries:27-08-2026

select Customer_Name from Customer where City='Tirupati'
select Customer_Name,Customer_Mobile from Customer where City='Hyderabad'
select Movie_Id,Movie_Name,Language,Genre,Duration from Movie where Language='Telugu'
select Movie_Name,Genre from Movie where Genre='Action'
select Movie_Name from Movie where Duration>'2:30'
select Theatre_Name from Theatre where Theatre_city='Tirupati'
select Theatre_Name,Theatre_Location from Theatre where Theatre_Screens>3
select Show_Id,Movie_Id,Theatre_Id,Time from Show where Show_Date='2026-08-22'
select Show_Id,Movie_Id,Time from Show where Time>'6:00 PM'
select Booking_Id,Customer_Id,Show_Id,Seats,Booking_Date from Booking where Seats>3
select Booking_Id,Customer_Id,Seats from Booking where Booking_Date>'2026-08-20'
select Payment_Id,Booking_Id,Amount,Payment_Type,Payment_Status from Payment where Amount>500
select Payment_Id,Booking_Id,Payment_Type from Payment where Payment_Type='UPI'
select Payment_Id,Booking_Id,Amount,Payment_Type,Payment_Status from Payment where Payment_Status='Success'
select Customer_Name,Customer_Email from Customer where City='Tirupati'or City='Chennai'
select Movie_Name from Movie where Language='Telugu' and Genre='Action'
select Movie_name from Movie where Duration>'2:00' and Duration<'3:00'
select Customer_Id,Customer_Name,Customer_Mobile,Customer_Email,City from Customer where Customer_Email is not null and City='Tirupati'
select Theatre_Id,Theatre_Name,Theatre_Location,Theatre_City,Theatre_Screens from Theatre where Theatre_City='Tirupati' or Theatre_City='Hyderabad'
select Theatre_Name from Theatre where Theatre_Screens>3 and Theatre_Location='Tirupati'
select Booking_Id,Customer_Id,Show_Id,Seats,Booking_Date from Booking where Seats>=2 and Seats<=5
select Booking_Id,Customer_Id from Booking where Booking_Date='2026-08-22' or Seats>4
select Payment_Id,Booking_Id,Amount,Payment_Type,Payment_Status from Payment where Amount>500 and Payment_Status='Success'
select Payment_Id,Amount,Payment_Type from Payment where Payment_Type='UPI' or Payment_Type='Card'
select Customer_Name from Customer where City='Tirupati' or City='Hyderabad' and Customer_Mobile is not null
select Customer_Id,Customer_Name from Customer where City='Tirupati'
select Movie_Name,Language,Genre from Movie where Duration>'2:00'
select Theatre_Name,Theatre_Location,Theatre_Screens from Theatre where Theatre_Screens>3
select Show_Id,Movie_Id,Time from Show where Time>'6:00 PM'
select Payment_Id,Amount,Payment_Status from Payment where Amount>500
select Customer_Name,Booking_Id from Customer as C join Booking as B on C.Customer_Id=B.Customer_Id
select Customer_Name,Customer_Mobile,Seats from Customer as C join Booking as B on C.Customer_Id=B.Customer_Id
select Movie_Name,Time from Movie as M join Show as S on M.Movie_Id=S.Movie_Id 
select Movie_Name,Language,Show_Date from Movie as M join Show as S on M.Movie_Id=S.Movie_Id
select Theatre_Name,Time from Theatre as T join Show as S on T.Theatre_Id=S.Theatre_Id
select Theatre_Name,Theatre_Location,Show_Date from Theatre as T join Show as S on T.Theatre_Id=S.Theatre_Id
select Movie_Name,Theatre_Name from Movie as M join Show as S on M.Movie_Id=S.Movie_Id join Theatre as T on T.Theatre_Id=S.Theatre_Id
select Movie_Name,Theatre_Name,Theatre_City from Movie as M join Show as S on M.Movie_Id=S.Movie_Id join Theatre as T on T.Theatre_Id=S.Theatre_Id where Theatre_City='Tirupati'
select Customer_Name,Movie_Name,Seats from Customer as C join Booking as B on C.Customer_Id=B.Customer_Id join Show as S on B.Show_Id=S.Show_Id join Movie as M on S.Movie_Id=M.Movie_Id where B.Seats>2
select Movie_Name,Theatre_Name,Time from Movie as M join Show as S on M.Movie_Id=S.Movie_Id join Theatre as T on S.Theatre_Id=T.Theatre_Id where T.Theatre_City='Tirupati' and S.Time>'6:00 PM'
select Customer_Name,Movie_Name,Booking_Date from Customer as C join Booking as B on C.Customer_Id=B.Customer_Id join Show as S on B.Show_Id=S.Show_Id join Movie as M on S.Movie_Id=M.Movie_Id where B.Booking_Date>'2026-08-21'
select Movie_Name,Theatre_Name,Theatre_City from Movie as M join Show as S on M.Movie_Id=S.Movie_Id join Theatre as T on S.Theatre_Id=T.Theatre_Id where T.Theatre_City='Tirupati' and M.Language='Telugu'
update Customer set City='Chittoor' where Customer_Id=110
update Movie set Genre='Action' where Movie_Id=204
update Theatre set Theatre_Screens=1 where Theatre_Id=304
update Payment set Payment_Status='Success' where Payment_Id=608
update Payment set Payment_Type='UPI' where Payment_Status='Processing' and Amount<500
delete from Booking where Customer_Id in (
select Customer_Id from Customer where Customer_Id=111 )
delete from Customer where Customer_Id=111
delete from Show where Movie_Id in (
select Movie_Id from Movie where Duration<'1:30')
delete from Movie where Duration<'1:30'
delete from Payment where Booking_Id in (
select Booking_Id from Booking where Show_Id in (
select Show_Id from Show where Theatre_Id in (
select Theatre_Id FROM Theatre where Theatre_Screens < 2 and Theatre_City = 'Tirupati')))
delete from Booking 
where Show_Id in (
select Show_Id from Show where Theatre_Id in (
select Theatre_Id from Theatre where Theatre_Screens < 2 And Theatre_City = 'Tirupati'))
delete from Show where Theatre_Id in (
select Theatre_Id from Theatre where Theatre_Screens < 2 And Theatre_City = 'Tirupati')
delete from Theatre where Theatre_Screens < 2 And Theatre_City = 'Tirupati'
delete Payment where Booking_Id in (
select Booking_Id from Booking where Seats=1 and Booking_Date='2026-08-21')
delete Booking where Seats=1 and Booking_Date<'2026-08-21'
delete Payment where Payment_Status='Failed' and Amount<300
update Movie set Duration=Dateadd(minute, 10, Duration)  where Duration<'2:00'
update Theatre set Theatre_Screens=Theatre_Screens+1 where Theatre_Screens<3
update Theatre set Theatre_City='Tirupati' where Theatre_Screens<=3 and Theatre_City='Chittoor'
update Movie set Language='Telugu' where Language='English' and Genre='Drama'
update Movie set Genre='Action' where Language='Telugu' and Duration>'2:00'
update Show set Time='6:00 PM' where Show_Date='2026-08-21' and Time<'6:00 PM'
update Booking set Seats=Seats+1 where Seats<3
update Booking set Booking_Date='2026-08-24' where Seats>4 and Booking_Date>'2026-08-22'
update Payment set Payment_Type='UPI' where Payment_Type='Cash'
update Payment set Payment_Status='Success' where Amount>500 and Payment_Status='Processing'
update Payment set Payment_Status='Failed' where Amount<100 and Payment_Status='Processing'
update Payment set Amount=Amount+50 where Amount<100 and Payment_Status='Processing'
delete Booking where Customer_Id in (
select Customer_Id from Customer where  City='Tirupati' and Customer_Email like '%@gmail.com')
delete Customer where City='Tirupati' and Customer_Email like '%@gmail.com'
delete from Payment where Booking_Id in (
select Booking_Id from Booking where Show_Id in (
select Show_Id from Show where Movie_Id in (
select Movie_Id from Movie where Language = 'English' And Duration > '03:00:00')))
delete from Payment where Booking_Id in (
select Booking_Id from Booking where Show_Id in(
select Show_Id from Show where Theatre_Id in (
select Theatre_Id from Theatre where Theatre_City='Hyderabad' or Theatre_City='Chennai' and Theatre_Screens<3)))
delete from Booking where Booking_Id in (
select Show_Id from Show where Theatre_Id in (
select Theatre_Id from Theatre where Theatre_City='Hyderabad' or Theatre_City='Chennai' and Theatre_Screens<3))
delete from Show where Theatre_Id in (
select Theatre_Id from Theatre where Theatre_City='Hyderabad' or Theatre_City='Chennai' and Theatre_Screens<3)
delete Theatre where Theatre_City='Hyderabad' or Theatre_City='Chennai' and Theatre_Screens<3
delete Payment where Booking_Id in (
select Booking_Id from Booking where Show_Id in(
select Show_Id from Show where Show_Date='2026-08-22' and Time<'5:00 PM') )
delete Booking where Show_Id in (
select Show_Id from Show where Show_Date='2026-08-22' and Time<'5:00 PM')
delete Show where Show_Date='2026-08-22' and Time<'5:00 PM'
delete from Payment where Booking_Id in (
select Booking_Id from Booking where Seats > 4 And Booking_Date < '2026-08-23')
delete from Booking 
where Seats > 4 And Booking_Date < '2026-08-23'
delete from Payment 
where Amount > 1000 
  And Payment_Status like 'Failed%'
  -- 71 to 110 Queries:03-09-2026
select count(*) from Customer where City = 'Tirupati' and Customer_Email like '%@gmail.com'
select count(*) from Customer where City='Hyderabad' or City='Chennai'
select count(*) from Movie where Language = 'Telugu' and Genre like 'Action'
select count(*) from Movie where Duration > '02:00:00' and Duration < '03:00:00'
select count(*) from Theatre where Theatre_City='Tirupati' and Theatre_Screens > 3
select count(*) from Booking where Seats >= 3 and Seats <= 5
select min(Duration) from Movie where Language='Telugu' and Genre like 'Action'
select max(Duration) from Movie where Language='English' or Language='Hindi'
--Duration ki time datatype thappu vasthundhi endhukante time datatype ki avg function use cheyalemu
--  select avg(Duration) from Movie where Duration > '02:00:00' and Duration < '03:00:00' it is invalid for duration cause it is in time datatype it will be invalid 
select Language, cast(dateadd(minute, avg(datediff(minute, 0, Duration)), 0) as time) as AvgDuration from Movie group by Language
select min(Theatre_Screens) from Theatre where Theatre_City='Tirupati' and Theatre_Screens > 2
select max(Theatre_Screens) from Theatre where Theatre_City='Hyderabad' or Theatre_City='Chennai'
select avg(Theatre_Screens) from Theatre where Theatre_City='Tirupati' and Theatre_Screens >= 3
select min(Seats) from Booking where Seats > 1 and Seats < 5
select max(Seats) from Booking where Booking_Date > '2026-08-20' and Seats > 2
select avg(Amount) from Payment where Payment_Status='Success' and Amount > 500
select sum(Amount) from Payment where Payment_Status='Success' and Amount > 500
select sum(Amount) from Payment where Payment_Type='UPI' and Amount > 300
select sum(Amount) from Payment where Payment_Status='Success' and Payment_Type='UPI' and Amount > 500
select distinct Theatre_City from Theatre where Theatre_Screens > 2 and Theatre_Screens < 6
select distinct Payment_Status from Payment where Payment_Type='UPI' or Payment_Type='Card'
select distinct Show_Date from Show where Time > '06:00 PM' and Time < '10:00 PM'
select Customer_Name from Customer where Customer_Name like 'A%' and City='Tirupati'
select Customer_Name from Customer where Customer_Name like 'R%' or Customer_Name like 'S%' and City='Hyderabad'
select Customer_Name,Customer_Email from Customer where Customer_Name like '%iv%' and Customer_Email like '%@gmail.com'
select Movie_Name from Movie where Movie_Name like 'S%' and Language='Telugu'
--select Language, avg(Duration) from Movie where Duration > '01:40:00' group by Language
--Duration ki time datatype thappu vasthundhi endhukante time datatype ki avg function use cheyalemu
select Language, avg(datediff(minute, 0, Duration)) from Movie where Duration > '01:40:00' group by Language
select Theatre_City, count(*) from Theatre where Theatre_Screens >= 3 group by Theatre_City
select Theatre_City, avg(Theatre_Screens) from Theatre where Theatre_Screens > 2 group by Theatre_City
select Payment_Type, sum(Amount) from Payment where Payment_Status = 'Success' group by Payment_Type
select City, count(*) from Customer group by City having count(*) > 2
select Language, count(*) from Movie group by Language having count(*) > 3
--select Genre, avg(Duration) from Movie group by Genre having avg(Duration) > 120
--Duration ki time datatype thappu vasthundhi endhukante time datatype ki avg function use cheyalemu
select Genre, avg(datediff(minute, 0, Duration)) from Movie group by Genre having avg(datediff(minute, 0, Duration)) > 120
select Theatre_City, count(*) from Theatre group by Theatre_City having count(*) >= 2
select Payment_Type, sum(Amount) from Payment group by Payment_Type having sum(Amount) > 500
select Genre, count(*) from Movie where Language = 'Telugu' group by Genre having count(*) > 2
select Customer_Id, sum(Seats) from Booking where Seats > 1 group by Customer_Id having sum(Seats) > 5
select Payment_Type, avg(Amount) from Payment where Payment_Status = 'Success' group by Payment_Type having avg(Amount) > 500
select Genre, count(*) from Movie group by Genre order by count(*) desc
--Duration ki time datatype thappu vasthundhi endhukante time datatype ki avg function use cheyalemu
--select Language, avg(Duration) from Movie group by Language order by Duration asc
select Language, avg(datediff(minute, 0, Duration)) as Avg_Duration_Minutes from Movie group by Language order by Avg_Duration_Minutes asc
select Payment_Type, sum(Amount) from Payment  where Payment_Status = 'Success' and Amount > 300 group by Payment_Type having sum(Amount) > 1000 order by sum(Amount) desc

--Sub queries and correlated queries: 10-09-26
/*1*/select * from Movie where Duration in(
select max(Duration) from Movie)
/*2*/select * from Movie where Duration in(
select min(Duration) from Movie)
/*3*/select * from Theatre where Theatre_Screens in(
select max(Theatre_Screens) from Theatre)
/*4*/select * from Theatre where Theatre_Screens in(
select min(Theatre_Screens) from Theatre)
/*5*/select * from Booking where Seats in(
select max(Seats) from Booking)
/*6*/select * from Booking where Seats in(
select min(Seats) from Booking)
/*7*/select * from Payment where Amount in(
select max(Amount) from Payment)
/*8*/select * from Payment where Amount in(
select min(Amount) from Payment)
/*9select Movie_Name from Movie where Duration in(
select avg(Duration) from Movie)*/
select m1.movie_name from movie m1 where datediff(minute, 0, m1.duration) > (
select avg(datediff(minute, 0, m2.duration)) from movie m2)
/*10select Movie_Name from Movie where Duration in(
select avg(Duration) from Movie)*/
select Theatre_name from Theatre where Theatre_screens > (
select avg(Theatre_screens) from Theatre )
/*11*/select Movie_Name from Movie where Duration > (
select Duration from Movie where Movie_Id=205)
/*12*/select Theatre_Name from Theatre where Theatre_Screens >(
select Theatre_Screens from Theatre where Theatre_Id=302)
/*13*/select Customer_Name from Customer where City =(
select City from Customer where Customer_Id=105)
/*14*/select * from Booking where Seats >(
select Seats from Booking where Booking_Id=505)
/*15*/select * from Payment where Amount>(
select Amount from Payment where Payment_Id=605)
/*16 error if select m1.movie_name from movie m1 where m1.duration > (
select avg(m2.duration) from movie m2 where m2.language = m1.language) */
select m1.movie_name from movie m1 where datediff(minute, 0, m1.duration) < (
select avg(datediff(minute, 0, m2.duration)) from movie m2)
/*17*/select Theatre_Name from Theatre where Theatre_Screens<(
select avg(Theatre_Screens) from Theatre )
/*18*/select Customer_Name from Customer where Customer_Id in(
select Customer_Id from Booking)
/*19*/select Movie_Name from Movie where Movie_Id in(
select Movie_Id from Show )
/*20*/select Theatre_Name from Theatre where Theatre_Id in(
select Theatre_Id from Show)
/*21*/select Customer_Name from Customer where Customer_Id not in(
select Customer_Id from Booking)
--22 error if select m1.movie_name from movie m1 where m1.duration < (select avg(m2.duration) from movie m2)
select m1.movie_name from movie m1 where datediff(minute, 0, m1.duration) < (
select avg(datediff(minute, 0, m2.duration)) from movie m2)
/*23*/select Theatre_Name from Theatre where Theatre_Screens>(
select avg(Theatre_Screens) from Theatre where Theatre_City='Tirupati')
/*24*/select * from Payment where Amount>(
select avg(Amount) from Payment where Payment_Status='Success')
/*25*/select Customer_Name from Customer where Customer_Id in(
select Customer_Id from Booking where Seats>2)
/*26 error if  select m1.movie_name from movie m1 where m1.duration > (
select avg(m2.duration) from movie m2  where m2.language = m1.language) */
select m1.movie_name from movie m1 where datediff(minute, 0, m1.duration) > (
select avg(datediff(minute, 0, m2.duration)) from movie m2 where m2.language = m1.language)
/*27*/select t.Theatre_Name from Theatre t where t.Theatre_Screens>(
select avg(t1.Theatre_Screens) from Theatre t1 where t1.Theatre_City=t.Theatre_city)
/*28*/select c.* from Customer c where c.Customer_Id in (
select b.Customer_Id from Booking b where b.Customer_Id=c.Customer_Id and Seats>(
select avg(b1.Seats) from Booking b1 where b1.Customer_Id=c.Customer_Id))
/*29*/select p.* from Payment p where p.Amount>(
select avg(p1.Amount) from Payment p1 where p1.Payment_Type=p.Payment_Type)
/*30 error if select m1.Movie_Name from Movie m1 where m1.Duration > (
select avg(m2.Duration) from Movie m2 where m2.Genre = m1.Genre) it is due to time format or time datatype*/
select m1.movie_name from movie m1 where datediff(minute, 0, m1.duration) > (
select avg(datediff(minute, 0, m2.duration)) from movie m2 where m2.genre = m1.genre)



