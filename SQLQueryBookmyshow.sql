create database BookMyShow
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

