-- Wildcard Operators:

-- Example 1: Names starting with "A"
SELECT * FROM USER 
WHERE NAME  LIKE 'A%';

-- Example 2: Names ending with "a"
SELECT * FROM USER
WHERE NAME LIKE '%a';

-- Example 3: Names containing "an"
select *from user
where name like '%an%';

-- _ (Underscore)
-- Meaning: Matches exactly one character.

select * from user
where name like '_lex';



