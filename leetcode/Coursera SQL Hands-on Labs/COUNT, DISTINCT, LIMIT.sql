-- ✅ COUNT
-- 1. Retrieve the number of locations of the films which are directed by Woody Allen.
SELECT COUNT(Locations) FROM FilmLocations 
	WHERE Director="Woody Allen";

-- 2. Retrieve the number of films shot at Russian Hill.
SELECT COUNT(Title) FROM FilmLocations 
	WHERE Locations="Russian Hill";

-- 3. Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.
SELECT Count(*) FROM FilmLocations 
	WHERE ReleaseYear < 1950;


-- ✅ DISTINCT
-- 1. Retrieve the names of all unique films released in the 21st century and onwards, along with their release years.
SELECT DISTINCT Title, ReleaseYear FROM FilmLocations 
	WHERE ReleaseYear>=2001;

-- 2. Retrieve the directors' names and their distinct films shot at City Hall.
SELECT DISTINCT Title, Director FROM FilmLocations 
	WHERE Locations="City Hall";

-- 3. Retrieve the number of distributors who distributed films with the 1st actor, Clint Eastwood.
SELECT COUNT(DISTINCT Distributor) FROM FilmLocations 
	WHERE Actor1="Clint Eastwood";


-- ✅ LIMIT
-- 1. Retrieve the names of the first 50 films.
SELECT DISTINCT Title FROM FilmLocations 
LIMIT 50; 

-- 2. Retrieve the first 10 film names released in 2015.
SELECT DISTINCT Title FROM FilmLocations 
WHERE ReleaseYear = 2015 
LIMIT 10;

-- 3. Retrieve the next 3 film names that follow after the first 5 films released in 2015.
SELECT DISTINCT Title FROM FilmLocations 
WHERE ReleaseYear = 2015 
LIMIT 3 OFFSET 5;
