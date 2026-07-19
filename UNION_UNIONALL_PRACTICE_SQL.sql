-- Union

CREATE TABLE admin_users (
    ID INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('MALE', 'FEMALE', 'OTHER'),
    date_of_birth DATE,
    salary INT
);

INSERT INTO admin_users (ID, name, email, gender, date_of_birth, salary)
VALUES
(1, 'Ali Khan', 'ali.khan@gmail.com', 'MALE', '1998-05-15', 70000),
(2, 'Sara Ahmed', 'sara.ahmed@gmail.com', 'FEMALE', '2000-08-22', 65000),
(3, 'Hassan Raza', 'hassan.raza@gmail.com', 'MALE', '1997-12-10', 80000),
(4, 'Ayesha Noor', 'ayesha.noor@gmail.com', 'FEMALE', '2001-03-18', 62000),
(5, 'Hamza Ali', 'hamza.ali@gmail.com', 'MALE', '1999-11-05', 75000),
(6, 'Iqra Aslam', 'iqra.aslam@gmail.com', 'FEMALE', '2002-01-20', 60000),
(7, 'Usman Tariq', 'usman.tariq@gmail.com', 'MALE', '1996-09-14', 90000),
(8, 'Noor Fatima', 'noor.fatima@gmail.com', 'FEMALE', '2003-07-30', 58000),
(9, 'Jordan Smith', 'jordan.smith@gmail.com', 'OTHER', '1995-06-11', 85000),
(10, 'Taylor Morgan', 'taylor.morgan@gmail.com', 'OTHER', '2001-10-08', 67000);

select * from admin_users;




SELECT name FROM user
UNION
SELECT name FROM admin_users;





SELECT ID, name, email FROM user
UNION
SELECT ID, name,email FROM admin_users;



SELECT ID, name, email FROM user
UNION ALL
SELECT ID, name,email FROM admin_users;




