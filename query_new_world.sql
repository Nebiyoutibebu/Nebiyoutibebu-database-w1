-- 1 
SELECT country.Name, country.Population
FROM country
WHERE country.Population > 8000000;

-- 2

SELECT Name
FROM country
WHERE Name LIKE "%land%";
-- 3
SELECT Name, Population
FROM city
WHERE Population BETWEEN 500000 AND 1000000;

-- 4 
SELECT Name
FROM country
WHERE Continent = "Europe";

-- 5
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC;

-- 6
SELECT city.Name, country.Name
FROM country INNER JOIN city ON city.CountryCode = country.Code
WHERE country.Name = "Netherlands";

-- 7
SELECT Name, Population
FROM city
WHERE Name = "Rotterdam";

-- 8 
SELECT Name, SurfaceArea
FROM country
ORDER BY SurfaceArea DESC LIMIT 10;

-- 9
SELECT Name, Population
FROM city
ORDER BY Population DESC LIMIT 10;

-- 10

SELECT sum(Population) As WorldsPopulation FROM country;
