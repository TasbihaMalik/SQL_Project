 -- STORED PR0CEDURE IN SQL:
 
 -- Example 1: Show all users
 DELIMITER //
 
 CREATE PROCEDURE GetAllUsers()
 BEGIN
	SELECT * FROM USER;
 END //
 DELIMITER ;

 -- TO SHOW/CALL THI PROCEDURE RUN THIS QUERY;
  CALL GetAllUsers();
  
  
  
-- Example 2: Show only male users

DELIMITER $$
CREATE PROCEDURE GetMaleUsers()
BEGIN
	select * from user
    where gender='male';
END $$
DELIMITER ;

call GetMaleUsers();

-- Example 3: Procedure with a parameter
DELIMITER //
CREATE PROCEDURE GetUserById (IN User_id INT)
BEGIN
   SELECT * FROM USER
   WHERE ID = User_id;

END //
DELIMITER ;

call GetUserById(8);

-- TO DROP/DELETE PROCEDURE
DROP PROCEDURE GetAllUsers;


 

