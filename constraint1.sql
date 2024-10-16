CREATE TABLE library_info (book_id INT,title VARCHAR(100) NOT NULL,author VARCHAR(100) NOT NULL,genre VARCHAR(50),publication_year INT,total_copies INT,available_copies INT,price DECIMAL(10, 2),publisher VARCHAR(100) );
desc library_info;


INSERT INTO library_info VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, 5, 3, 10.99, 'Scribner'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 1960, 8, 2, 14.99, 'J.B. Lippincott & Co.'),
(3, '1984', 'George Orwell', 'Dystopian', 1949, 6, 4, 12.99, 'Secker & Warburg'),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', 1813, 7, 5, 9.99, 'T. Egerton'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 1951, 4, 1, 11.99, 'Little, Brown and Company'),
(6, 'Moby-Dick', 'Herman Melville', 'Adventure', 1851, 3, 1, 15.99, 'Harper & Brothers'),
(7, 'War and Peace', 'Leo Tolstoy', 'Historical Fiction', 1869, 2, 0, 19.99, 'The Russian Messenger'),
(8, 'The Alchemist', 'Paulo Coelho', 'Adventure', 1988, 10, 7, 13.99, 'HarperCollins'),
(9, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 9, 6, 12.99, 'George Allen & Unwin'),
(10, 'Brave New World', 'Aldous Huxley', 'Dystopian', 1932, 5, 2, 10.99, 'Chatto & Windus');

select * from library_info;

alter table library_info ADD CONSTRAINT lib_inf_uni unique(publisher);
alter table library_info DROP CONSTRAINT lib_inf_uni ;

/*-----------------------------------------------------------------------------------*/

CREATE TABLE hospital_info(id int, h_name varchar(20) not null,h_loc varchar(15), no_of_doctors int, h_dept varchar(30),created_at timestamp, created_by varchar(20), modified_at timestamp, modified_by varchar(20),
constraint h_loc_uni unique(h_loc)); 

SELECT * FROM hospital_info;
INSERT INTO hospital_info values(1,'jaydeva', 'BTM',20, 'cardiology', now(), 'xworkz', now(), 'xworkz');
INSERT INTO hospital_info values(2,'Apollo', 'jaynagar',30, 'ICU', now(), 'xworkz', now(), 'xworkz');
INSERT INTO hospital_info values(3,'fortis', 'jaynagar',10, 'dental', now(), 'xworkz', now(), 'xworkz');

ALTER TABLE hospital_info ADD CONSTRAINT h_dept_uni unique(h_dept);
ALTER TABLE hospital_info drop constraint h_loc_uni; 

/*-----------------------------------------------------------------------------------*/ 
CREATE TABLE bank_info (
    b_id INT PRIMARY KEY,
    b_Name VARCHAR(100) not null,
    b_accountType VARCHAR(50),
    b_balance DECIMAL(12, 2),
    b_no_of_staffs int,
    IFSC_Code VARCHAR(15) unique,
    b_number VARCHAR(15),
    isActive boolean,constraint b_no_of_staffs_chk check(b_no_of_staffs>10)
);
 desc bank_info;

INSERT INTO bank_info 
VALUES 
(1, 'State Bank of India', 'Savings', 1000000.50, 15, 'SBIN0001234', '9876543210', TRUE),
(2, 'HDFC Bank', 'Current', 2500000.00, 20, 'HDFC0005678', '9123456789', TRUE),
(3, 'ICICI Bank', 'Savings', 1500000.75, 18, 'ICIC0002468', '9867543201', TRUE),
(4, 'Axis Bank', 'Current', 300000.00, 25, 'AXIS0003698', '9801234567', TRUE),
(5, 'Kotak Mahindra Bank', 'Fixed Deposit', 5000000.00, 12, 'KKBK0009876', '9712345678', TRUE),
(6, 'Punjab National Bank', 'Savings', 180000.00, 16, 'PUNB0007890', '9987654321', FALSE),
(7, 'Bank of Baroda', 'Savings', 750000.00, 19, 'BARB0001357', '9823456710', TRUE),
(8, 'Canara Bank', 'Current', 750000.00, 30, 'CNRB0002584', '9954321768', TRUE),
(9, 'Union Bank of India', 'Savings', 125000.00, 22, 'UBIN0003579', '9875612348', FALSE),
(10, 'IndusInd Bank', 'Fixed Deposit', 2000000.00, 14, 'INDB0006457', '9901234569', TRUE);

select*from bank_info;

/*---------------------------------------------------------------------------------------*/

CREATE TABLE hospital_info (
    h_id INT PRIMARY KEY,
    h_name VARCHAR(100) not null,
    h_location VARCHAR(50),
    h_capacity INT,
    h_number VARCHAR(15),
    h_type VARCHAR(50),
    h_dept_count INT,
    h_rating DECIMAL(2, 1),constraint h_name_uni unique(h_name)
);

desc hospital_info;

 
 INSERT INTO hospital_info VALUES(1, 'City Hospital', 'New Delhi', 500, '011-23456789', 'Multispecialty', 15, 4.5),
(2, 'Apollo Medical', 'Mumbai', 800, '022-34567890', 'Private', 20, 4.7),
(3, 'Global Care', 'Chennai', 600, '044-45678901', 'Teaching', 18, 4.3),
(4, 'Fortis Clinic', 'Bangalore', 350, '080-56789012', 'Multispecialty', 12, 4.2),
(5, 'AIIMS', 'New Delhi', 1200, '011-67890123', 'Government', 25, 4.8),
(6, 'Medanta', 'Gurgaon', 700, '0124-78901234', 'Private', 19, 4.6),
(7, 'Rainbow Children', 'Hyderabad', 300, '040-89012345', 'Specialty', 8, 4.4),
(8, 'Manipal Hospital', 'Pune', 450, '020-90123456', 'Teaching', 16, 4.1),
(9, 'KIMS', 'Kochi', 550, '0484-12345678', 'Private', 14, 4.0),
(10, 'Narayana Health', 'Jaipur', 900, '0141-23456789', 'Multispecialty', 22, 4.5);

alter table hospital_info add constraint h_capacity_chk check(h_capacity>100), drop constraint h_name_uni;

