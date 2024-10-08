/* ddl: data defination language 

create: 
create database
create table 

SYNTAX FOR CREATING DATABASE,TABLE,DESC.
CREATE DATABASE database_name;
CREATE TABLE table_name;
desc table_name;
DESC: describe
*/





CREATE DATABASE lekha;
USE lekha;
CREATE TABLE metro_info (id int, m_name varchar(20),m_source varchar(15), m_dest varchar(20), m_price bigint);
desc metro_info;



/* 
ALTER:
1.ADD a new column to existing table
2.DROP  column from existing table
3.RENAME column name
4.CHANGE the datatype


SYNTAX FOR ADDING A NEW COLUMN FOR THE EXISTING TABLE
1.ALTER TABLE table_name ADD COLUMN column_name int;
*/


ALTER TABLE metro_info ADD COLUMN no_of_passengers int;
ALTER TABLE metro_info  ADD COLUMN line varchar(10),ADD COLUMN no_of_stops int;
SELECT * FROM metro_info;


/* Removing the column from the exixting table
syntax for dropping the column 
2.ALTER TABLE table_name DROP COLUMN column_name;
*/

ALTER TABLE metro_info DROP COLUMN m_price;
ALTER TABLE metro_info DROP COLUMN m_source,drop column m_dest;


/* 
3.RENAME THE COLUMN NAME:
ALTER TABLE table name RENAME COLUMN existing_table_name TO new_table_name; */


ALTER TABLE metro_info RENAME COLUMN line to metro_line;
USE lekha;


/*4) Change the datatype:
Syntax for chnaging the datatype of the column
ALTER TABLE table_name MODIFY COLUMN column_name datatype;*/

ALTER TABLE metro_info MODIFY COLUMN no_of_stops int;



/* RENAME the table name 
syntax 
RENAME:
RENAME TABLE existing_table_name to new_table_name;*/


RENAME TABLE metro_info TO metro_details;

SELECT * FROM metro_details;

/* 
DROP:
Truncate:

Data manipulation lang
SELECT
INSERT

syntax for inserting into the table
INSERT INTO table_name values(data1,data2,......); */

INSERT INTO metro_details VALUES(1,'jpNagara',10,'greenline',12);
INSERT INTO metro_details VALUES(2,'btm',12,'purpleline',13);
INSERT INTO metro_details values(3, 'Ecity', 150, 'yellowline', 16);


/* to insert the details for selected columns */
INSERT INTO metro_details(id, metro_line, no_of_stops) VALUES(4,'Green', 6);


/*batch INSERT : here therse is only 1 transaction means 1 insert but there are 3 rows
so batch insert means inserting multiple rows */

INSERT INTO metro_details values(5,'jaynagar',300,'green',9),(6,'jaynagar',400,'green',9),(6,'jaynagar',300,'green',8); 
SELECT * FROM metro_details;


/*this to see selected column now we can see only 1 column that is m_name*/
SELECT m_name from metro_details;
SELECT m_name,id,metro_line from metro_details;

/*WHERE: Filter the data from table.
Syntax for filter the data from table
SELECT * FROM table_name where column_condition;*/

SELECT * FROM metro_details where id = 3;
SELECT * FROM metro_details where metro_line = 'Green';

SELECT m_name FROM metro_details where id = 2;
SELECT no_of_passengers, no_of_stops from metro_details where metro_line = 'purpleline';

select*from metro_details;


/*olympics*/
CREATE TABLE olympics (id int,o_name varchar(50),city varchar(30),country varchar(30),o_year int,participants int,gold_medals int,silver_medals int,bronze_medals int,budget int);
select * from olympics;

INSERT INTO olympics VALUES (1, '100m Sprint', 'Tokyo', 'Japan', 2021, 60, 3, 3, 3, 1500000);
INSERT INTO olympics VALUES (2, 'Swimming 200m Freestyle', 'Rio de Janeiro', 'Brazil', 2016, 80, 2, 2, 2, 1800000);
INSERT INTO olympics VALUES (3, 'Marathon', 'London', 'UK', 2012, 50, 1, 1, 1, 1200000);
INSERT INTO olympics VALUES (4, 'Gymnastics - All Around', 'Beijing', 'China', 2008, 40, 2, 2, 2, 2000000);
INSERT INTO olympics VALUES (5, 'Basketball', 'Athens', 'Greece', 2004, 100, 1, 1, 1, 2500000);
INSERT INTO olympics VALUES (6, 'Weightlifting', 'Sydney', 'Australia', 2000, 45, 3, 3, 3, 1750000);
INSERT INTO olympics VALUES (7, 'Archery', 'Atlanta', 'USA', 1996, 30, 1, 1, 1, 1300000);
INSERT INTO olympics VALUES (8, 'Cycling - Road Race', 'Barcelona', 'Spain', 1992, 90, 2, 2, 2, 1450000);
INSERT INTO olympics VALUES (9, 'Fencing', 'Seoul', 'South Korea', 1988, 35, 1, 1, 1, 1600000);
INSERT INTO olympics VALUES (10, 'Football', 'Los Angeles', 'USA', 1984, 150, 1, 1, 1, 3000000);
INSERT INTO olympics VALUES (11, 'Archery', 'London', 'UK', 2000, 46, 1, 2, 1, 1300000);
INSERT INTO olympics VALUES (12, 'Football', 'Athens', 'USA', 2012, 100, 1, 3, 1, 3000000);

select * from olympics where o_name='Football' and id=12;
select * from olympics where country='USA'or id=3 or o_name='Archery'or o_year= 2000;
select*from olympics where id in(2,4,6,8,10);
select*from olympics where id not in(1,3,5,7,9,11);

/*airport details*/
create table airport_details(id int,airport_name varchar(30),city varchar(20),country varchar(30),state varchar(30),seats int,ICAO varchar(10),IATA varchar(10),FAA varchar(10),price int);
select * from airport_details;

INSERT INTO airport_details VALUES (1,'Manglore international','manglore','India','Karnataka',50,'CYEG','YEG','CYEG',7000);
INSERT INTO airport_details VALUES (2,'Kempegowda international ','banglore','India','Karnataka',100,'CYHZ','YHZ','CYHZ',9000);
INSERT INTO airport_details VALUES (3,'Vishakhapatnam_airport','vishakhapatnam','India','Andra pradesh',80,'INAP','YAP','CYAP',7000);
INSERT INTO airport_details VALUES (4,'Vijayawada_airport','vijaywada','India','Andra pradesh',500,'INVW','NVW','INVW',10000);
INSERT INTO airport_details VALUES (5,'Cuddapah_airport','cuddapah','India','Andra pradesh',600,'INAP','NAP','INVW',87000);
INSERT INTO airport_details VALUES (6,'Tezu_airport','tezpur','India','assam',670,'INTA','NTA','INTA',75000);
INSERT INTO airport_details VALUES (7,'Diu_airport','diu','India','daman and diu',590,'INDI','NDI','INDI',7000);
INSERT INTO airport_details VALUES (8,'Indira_gandhi','Delhi','India','Delhi',360,'INDL','NDL','INDL',89000);
INSERT INTO airport_details VALUES (9,'Kullu_manali','kullu','India','himachal pradesh',900,'INKM','NKM','INKM',78000);
INSERT INTO airport_details VALUES (10,'Kempegowda international','banglore','India','Karnataka',50,'CYEG','YEG','CYEG',19000);
INSERT INTO airport_details VALUES (11,'Manglore international','manglore','India','Karnataka',50,'CYEG','YEG','CYEG',7000);
INSERT INTO airport_details VALUES (12,'Tezu_airport','tezpur','India','assam',690,'INTA','NTA','INTA',95000);

select * from airport_details where airport_name = 'manglore international' and id = 1;
select * from airport_details where airport_name = 'manglore international' or id = 10;
select * from airport_details where id in(5,6,7,8,9);
select * from airport_details where id not in(5,6,7,8,9);
