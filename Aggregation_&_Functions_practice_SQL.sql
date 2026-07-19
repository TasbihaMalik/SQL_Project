
  CREATE TABLE Salary_table (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10,2) NOT NULL,
    Create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO salary_table (name, email, gender, date_of_birth, salary)
VALUES
('Hassan Raza', 'hassan.raza@gmail.com', 'Male', '1999-03-18', 55000.00),
('Fatima Malik', 'fatima.malik@gmail.com', 'Female', '2001-07-09', 48000.00),
('Bilal Ahmed', 'bilal.ahmed@gmail.com', 'Male', '1998-12-22', 62000.00),
('Noor Fatima', 'noor.fatima@gmail.com', 'Female', '2003-06-14', 45000.00),
('Hamza Ali', 'hamza.ali@gmail.com', 'Male', '2000-09-30', 58000.00),
('Zainab Khan', 'zainab.khan@gmail.com', 'Female', '2002-04-11', 50000.00),
('Abdullah Shah', 'abdullah.shah@gmail.com', 'Male', '1997-11-25', 70000.00),
('Iqra Aslam', 'iqra.aslam@gmail.com', 'Female', '2004-01-16', 42000.00),
('Muneeb Ahmad', 'muneeb.ahmad@gmail.com', 'Male', '2001-10-08', 53000.00),
('Hira Noor', 'hira.noor@gmail.com', 'Female', '2002-08-21', 49000.00),
('Daniyal Khan', 'daniyal.khan@gmail.com', 'Male', '1999-05-05', 65000.00),
('Mahnoor Ali', 'mahnoor.ali@gmail.com', 'Female', '2003-09-17', 46000.00),
('Taha Ibrahim', 'taha.ibrahim@gmail.com', 'Male', '2000-02-27', 60000.00),
('Laiba Hassan', 'laiba.hassan@gmail.com', 'Female', '2001-12-04', 47000.00),
('Umer Farooq', 'umer.farooq@gmail.com', 'Male', '1998-07-19', 68000.00),
('Anaya Sheikh', 'anaya.sheikh@gmail.com', 'Female', '2004-03-13', 44000.00),
('Areeb Qureshi', 'areeb.qureshi@gmail.com', 'Male', '2002-10-29', 56000.00),
('Mehak Asif', 'mehak.asif@gmail.com', 'Female', '2000-06-07', 51000.00),
('Jordan Smith', 'jordan.smith@gmail.com', 'Other', '1999-01-20', 63000.00),
('Taylor Morgan', 'taylor.morgan@gmail.com', 'Other', '2003-11-15', 52000.00);

select COUNT(*) FROM salary_table;

select COUNT(*) FROM salary_table
where gender='male';

SELECT MAX(salary) AS MAX_SALARY , MIN(salary) AS MIN_SALARY FROM salary_table;

SELECT SUM(salary) AS Total_Salary from salary_table;

SELECT gender, AVG(salary) AS AVG_Salary from salary_table group by gender;

select name, length(name) AS name_len from salary_table;

select id,gender, UPPER (Name) AS UPPER_NAME, length(name) AS name_len from salary_table;

select id,gender, UPPER (Name) AS UPPER_NAME, concat(LOWER(NAME), "5677") AS Username FROM  salary_table;

select name, datediff(Curdate(), date_of_birth) AS days From salary_table;

Select name, gender, 
if(gender='female', 'yes', 'no') AS Is_Female from salary_table;