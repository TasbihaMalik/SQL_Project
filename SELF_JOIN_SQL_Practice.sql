
Alter table user
add referred_by_id int;

select * from user;

UPDATE user SET referred_by_id = 1 WHERE id IN (2,3,13,14,15,16,18,20);
UPDATE user SET referred_by_id = 2 WHERE id = 4;
SELECT * FROM USER;


SELECT
    a.id,
    a.name AS User_name,
    b.name AS Referred_by_name
FROM user a
INNER JOIN user b
ON a.referred_by_id = b.id;



Select
a.id,
a.name AS User_name,
a.gender AS User_gender,
b.email AS User_email
from user a
INNER JOIN user b ON a.referred_by_id = b.id;
