-- ✅ INSERT
-- 1. Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the “Instructor” table.
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
	VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA');

-- 2. Insert two new instructor records into the “Instructor” table. First record with id 5 for John Doe who lives in Sydney, AU. Second record with id 6 for Jane Doe who lives in Dhaka, BD.
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
	VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');



-- ✅ UPDATE
-- 1. Update the city for Sandip to Toronto.
UPDATE Instructor 
	SET city = 'Toronto' 
		WHERE firstname = "Sandip";

-- 2. Update the city and country for Doe with id 5 to Dubai and AE respectively.
UPDATE Instructor 
	SET city = 'Dubai', country = 'AE' 
		WHERE ins_id = 5;



-- ✅ DELETE
-- 1. Remove the instructor record of Doe whose id is 6.
DELETE FROM instructor
	WHERE ins_id = 6;
