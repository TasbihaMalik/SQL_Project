  USE startersql;
   CREATE TABLE user (
  	ID int auto_increment primary key,
  	name varchar(100) not null,
  	email varchar(100) unique not null,
  	gender ENUM( 'Male', 'Female', 'Other'),
  	date_of_birth date,
  	Create_at timestamp default current_timestamp
  );

select * from user;

SELECT name,email from user;

-- Rename Table user  to programmers
Rename Table user  to programmers;

   SELECT * FROM programmers;

-- RENAME TABLE programmers TO user 
RENAME TABLE programmers TO user;

-- Use Alter in Table to Add Column
ALTER TABLE user
 ADD is_Active Boolean default True ;
 select * FRom user;
 
 -- Use Alter in Table to Drop  Column
 ALTER TABLE user
	DROP COLUMN is_Active;
    select * FRom user;
    
    
-- Use Alter in Table to modify  Column
 ALTER TABLE user
	modify COLUMN name varchar(150);
select * FRom user;



-- Use Alter In Table TO Modify columns to change the name and email coloumns
--  ALTER TABLE user
-- 	modify COLUMN Email varchar(100) AFTER id;
-- select * FRom user;


-- Insert Data In Table.
INSERT INTO user (name, email, gender, date_of_birth)
VALUES
('Hassan Raza', 'hassan.raza@gmail.com', 'Male', '1999-03-18'),
('Fatima Malik', 'fatima.malik@gmail.com', 'Female', '2001-07-09'),
('Bilal Ahmed', 'bilal.ahmed@gmail.com', 'Male', '1998-12-22'),
('Noor Fatima', 'noor.fatima@gmail.com', 'Female', '2003-06-14'),
('Hamza Ali', 'hamza.ali@gmail.com', 'Male', '2000-09-30'),
('Zainab Khan', 'zainab.khan@gmail.com', 'Female', '2002-04-11'),
('Abdullah Shah', 'abdullah.shah@gmail.com', 'Male', '1997-11-25'),
('Iqra Aslam', 'iqra.aslam@gmail.com', 'Female', '2004-01-16'),
('Muneeb Ahmad', 'muneeb.ahmad@gmail.com', 'Male', '2001-10-08'),
('Hira Noor', 'hira.noor@gmail.com', 'Female', '2002-08-21'),
('Daniyal Khan', 'daniyal.khan@gmail.com', 'Male', '1999-05-05'),
('Mahnoor Ali', 'mahnoor.ali@gmail.com', 'Female', '2003-09-17'),
('Taha Ibrahim', 'taha.ibrahim@gmail.com', 'Male', '2000-02-27'),
('Laiba Hassan', 'laiba.hassan@gmail.com', 'Female', '2001-12-04'),
('Umer Farooq', 'umer.farooq@gmail.com', 'Male', '1998-07-19'),
('Anaya Sheikh', 'anaya.sheikh@gmail.com', 'Female', '2004-03-13'),
('Areeb Qureshi', 'areeb.qureshi@gmail.com', 'Male', '2002-10-29'),
('Mehak Asif', 'mehak.asif@gmail.com', 'Female', '2000-06-07'),
('Jordan Smith', 'jordan.smith@gmail.com', 'Other', '1999-01-20'),
('Taylor Morgan', 'taylor.morgan@gmail.com', 'Other', '2003-11-15');

SELECT * FROM user;


-- Use selection function to display only females: 

SELECT * FROM user
	where gender= 'Female';
    
    
-- Use selection function to display  date_of_birth > '2000-01-01': 
SELECT * FROM user
		WHERE date_of_birth > '2000-01-01';
        
-- Use AND fUNCTION 
SELECT * FROM user
		WHERE GENDER = 'FEMALE' AND date_of_birth > '2000-01-01';
        
        
-- Use LIMIT Function
SELECT * FROM user
		WHERE GENDER = 'Male' AND date_of_birth < '2000-01-01'
        LIMIT 5;
        
-- Use ORDER BY Function
SELECT * FROM user
			ORDER BY name ASC;

SELECT * FROM user
		   ORDER BY date_of_birth DESC;
           

-- Use UPDATE Function
-- UPDATE user
-- 			SET gender = 'Female'
-- 				WHERE ID = 5;
-- SELECT * FROM user;


-- UPDATE user SET
-- 		name = 'Ayesha Khan', email = 'ayesha.khan@gmail.com', gender = 'Female'
-- WHERE ID = 4;
-- SELECT * FROM user;


-- Use DELETE Function
DELETE FROM user
WHERE name = 'Ali Khan';
SELECT * FROM user;





  