-- INDEXES:

-- TO SHOW INDEXES FROM THE TABLE USE THIS QUERY:

SHOW indexes from user;

-- TO CREATE  INDEXES FROM THE TABLE USE THIS QUERY:
CREATE INDEX idx_gender ON USER(GENDER);

SELECT * FROM user WHERE EMAIL="sara@gmail.com" AND GENDER="FEMALE";



-- MULTI-INDEX QUERY: 
CREATE INDEX idx_gender_salary ON salary_table(gender,salary);
SHOW indexes from salary_table;


SELECT * FROM salary_table WHERE gender = "FEMALE" AND salary> 40000;


-- TO DROP INDEX USE THIS QUERY:
DROP INDEX idx_gender on user;





