use lekha;
create table Bus(id int NOT NULL UNIQUE,bus_number varchar(10)not null,driver_name varchar(50),capacity int not null,route varchar(50));
desc Bus;
select*from Bus;

insert into bus values(1,'17b', 'ramesh',50,'Route A');
insert into bus values(2,'18b', 'suresh',50,'Route B');
insert into bus values(3,'19b', 'amesh',40,'Route C');
insert into bus values(4,'15a', 'raju',60,'Route D');
insert into bus values(5,'101j', 'surya',40,'Route E');
insert into bus values(6,'1b', 'prajwal',50,'Route A');
insert into bus values(7,'10c', 'pawan',50,'Route B');
insert into bus values(8,'9b', 'amit',40,'Route G');
insert into bus values(9,'5a', 'ragu',60,'Route F');
insert into bus values(10,'104j', 'akill',40,'Route Y');
insert into bus values(11, 'MH1234', 'Seema ', 60, 'Route C');
insert into bus values(12, 'MH2345', 'Prakash ', 50, 'Route L');
insert into bus values(13, 'MH3456', 'Jyoti', 56, 'Route M');
insert into bus values(14, 'MH67', 'Deepak ', 51, 'Route B');
insert into bus values(15, 'MH15', ' Kulkarni', 49, 'Route O');
insert into bus values(16, 'MH1689', 'Sanjay ', 45, 'Route P');
insert into bus values(17, 'MH17', 'Preeti ', 54, 'Route A');
insert into bus values(18, 'MH18', 'Ajay ', 58, 'Route R');
insert into bus values(19, 'MHH9012', 'Vikash ', 46, 'Route S');
insert into bus values(20, 'MIJ3', 'Anita ', 60, 'Route D');


alter table bus modify column route varchar(50) not null;


create table train_details(train_id int unique,train_name varchar(50),train_type varchar(20) not null,total_coaches int,route varchar(100));
desc train_details;
select*from train_details;



insert into train_details values(1, 'Rajdhani Express', 'Express', 20, 'New Delhi to Mumbai Central'),
(2, 'Shatabdi Express', 'Express', 15, 'Chennai to Bangalore'),
(3, 'Duronto Express', 'Express', 22, 'Kolkata to Delhi'),
(4, 'Garib Rath', 'Superfast', 18, 'Mumbai to Chennai'),
(5, 'Jan Shatabdi', 'Superfast', 16, 'Bangalore to Mysore'),
(6, 'Humsafar Express', 'Express', 24, 'Hyderabad to Delhi'),
(7, 'Vande Bharat', 'Semi-High Speed', 16, 'Delhi to Varanasi'),
(8, 'Tejas Express', 'Superfast', 18, 'Mumbai to Ahmedabad'),
(9, 'Mysore Express', 'Passenger', 20, 'Chennai to Mysore'),
(10, 'Bhopal Shatabdi', 'Express', 14, 'New Delhi to Bhopal'),
(11, 'Sampark Kranti', 'Superfast', 22, 'Bangalore to Delhi'),
(12, 'Karnataka Express', 'Superfast', 24, 'Bangalore to Delhi'),
(13, 'Yuva Express', 'Superfast', 20, 'Howrah to Delhi'),
(14, 'Chennai Express', 'Passenger', 18, 'Mumbai to Chennai'),
(15, 'Konkan Kanya Express', 'Superfast', 16, 'Mumbai to Goa'),
(16, 'Sapt Kranti', 'Superfast', 18, 'Delhi to Muzaffarpur'),
(17, 'Maharaja Express', 'Luxury', 12, 'Delhi to Rajasthan'),
(18, 'Golden Chariot', 'Luxury', 14, 'Bangalore to Goa'),
(19, 'Palace on Wheels', 'Luxury', 13, 'Delhi to Rajasthan'),
(20, 'Dakshin Express', 'Express', 20, 'Hyderabad to Delhi');


alter table train_details modify column train_name varchar(50) unique;
alter table train_details modify column total_coaches int not null;






