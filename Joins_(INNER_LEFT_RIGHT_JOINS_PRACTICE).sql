-- Joins
-- Inner Join

select user.name, addresses.city
from user
Inner JOIN addresses on user.id = addresses.USER_ID;


SELECT user.name, user.gender, user.date_of_birth, addresses.city, addresses.state, addresses.pincode
FROM user
LEFT JOIN addresses ON user.ID = addresses.USER_ID;



SELECT user.ID, user.name, user.gender, user.Email, addresses.city, addresses.state, addresses.pincode
FROM user
RIGHT JOIN addresses ON user.ID = addresses.USER_ID;

