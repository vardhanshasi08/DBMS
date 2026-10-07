create database Restaurant_Management01

create table Restaurant
(
 Restaurant_ID          char(20)    primary key,
 Restaurant_Name        char(30),
 Restaurant_Address     varchar(50),
 Restaurant_Contact     bigint,
 Restaurant_Rating      float,
 Restaurant_Type        char(50)
 )
 insert into Restaurant values('101','Ps4','Tiruchanoor Road',9876543210,4.5,'Pure Veg')
 insert into Restaurant values('102','A2B','KT Road',9876543211,3.5,'Pure Veg')
 insert into Restaurant values('103','Orion','Nandi circle',9876543212,4.5,'Pure Veg')
 insert into Restaurant values('104','Vivaha Bhojanambu','Dr Mahal Road',9876543213,3.5,'Non Veg')
 insert into Restaurant values('105','Space Biryani','VV mahal Road',9876543214,3.0,'Non Veg')
 insert into Restaurant values('106','Taj','Tiruchanoor Road',9876543215,4.0,'Veg and Non Veg')


 create table Food(
 Food_Id     int       primary key, 
 Food_Item   char(30)  unique,
 Food_Type   char(20),
 Quantity    int,
 Food_Price  int
 )
 insert into Food values(301,'Sada Dosa','Veg',3,40)
 insert into Food values(302,'Pongal','Veg',2,50)
 insert into Food values(303,'North Indian Meals','Veg',1,90)
 insert into Food values(304,'South Indian Meals','Veg',1,90)
 insert into Food values(305,'Masala Dosa','Veg',1,50)
 insert into Food values(306,'Idly','Veg',4,30)
 insert into Food values(307,'Puri','Veg',2,50)
 insert into Food values(308,'Gobi fried rice','Veg',1,90)
 insert into Food values(309,'Veg fried rice','Veg',1,399)
 insert into Food values(310,'Pizza','Non veg',1,100)
 insert into Food values(311,'Burger','Non veg',1,100)
 

 create table Customer
 (
 Customer_Id       int           primary key,
 Customer_Mobile   bigint,
 Customer_Email    varchar(50),
 Customer_Address  varchar(50),
 Customer_Name     char(20),
 Ordered_Food      char(30)      foreign key(Ordered_Food) references Food(Food_Item)
 )
 insert into Customer values(50001,9876543000,'ram051@gmail.com','Bhavani Nagar','Ram','Sada Dosa')
 insert into Customer values(50002,9876543001,'krishna52@gmail.com','KT Road','Krishna','Pongal')
 insert into Customer values(50003,9876543002,'shiva53@gmail.com','Korlagunta','Shiva','North Indian Meals')
 insert into Customer values(50004,9876543003,'parvathi54@gmail.com','Korlagunta','Parvathi','South Indian Meals')
 insert into Customer values(50005,9876543004,'sita55@gmail.com','Bhavani Nagar','Sita','Masala Dosa')
 insert into Customer values(50006,9876543005,'vinayaka56@gmail.com','Korlagunta','Vinayaka','Idly')
 insert into Customer values(50007,9876543006,'kamakshi57@gmail.com','TK street','Kamakshi','Puri')
 insert into Customer values(50008,9876543007,'vishnu58@gmail.com','Gandhi Road','Vishnu','Gobi fried rice')
 insert into Customer values(50009,9876543008,'lakshmi59@gmail.com','Gandhi road','Lakshmi','Veg fried rice')
 insert into Customer values(50010,9876543009,'dakshinamurthy60@gmail.com','Balaji Colony','Dakshinamurthy','Pizza')
 
 
 create table Payment(
 Payment_Id             int        primary key,
 Amount                 int,
 Payment_Type           char(20),
 Discount_Percent       int,
 Payment_Date           Date
 )
 insert into Payment values(501,200,'Cash',12,'2026-07-16')
 insert into Payment values(502,280,'UPI',12,'2026-08-16')
 insert into Payment values(503,220,'Cash',10,'2026-09-16')
 insert into Payment values(504,180,'UPI',8,'2026-08-16')
 insert into Payment values(505,100,'Cash',5,'2026-07-16')
 insert into Payment values(506,300,'Card',12,'2026-08-16')
 insert into Payment values(507,150,'UPI',8,'2026-09-16')
 insert into Payment values(508,230,'UPI',12,'2026-08-16')
 insert into Payment values(509,200,'Card',12,'2026-09-16')
 insert into Payment values(510,210,'Cash',12,'2026-08-16')


 create table Staff(
 Staff_Id     int         primary key,
 Staff_name   char(20),
 Staff_Type   char(20),
 Rating       float,
 Salary       int
 )
 insert into Staff values(161,'Stalin','Cashier',2.5,35000)
 insert into Staff values(162,'Babu','Server',2.0,30000)
 insert into Staff values(163,'Gopinath','Chef',4.0,80000)
 insert into Staff values(164,'Sandeep','Assistant Manager',3.5,75000)
 insert into Staff values(165,'Satwik','Manager',4.0,90000)

select * from Restaurant
select * from Food
select * from Customer
select * from Payment
select * from Staff

