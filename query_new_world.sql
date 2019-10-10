
1.
What are the names of countries with population greater than 8 million?
SELECT Name, Population
FROM country
WHERE Population > 8000000;

==
2.What are the names of countries that have “land” in their names ?
SELECT CountryName
from country
where countryName 
"%land%";
==
3.What are the names of the cities with population in between 500,000 and 1 million ?
SELECT Name
FROM city
WHERE Population BETWEEN 500000 AND 1000000;
==
4.What's the name of all the countries on the continent ‘Europe’ ?
SELECT Name
FROM country
WHERE Continent = 'Europe';

==
5.List all the countries in the descending order of their surface areas.
SELECT Name,
FROM country
order by SurfaceArea DESC;

6.What are the names of all the cities in the Netherlands?
SELECT CityName
FROM country
WHERE Country = 'Netherlands';
==
7.What is the population of Rotterdam ?
SELECT Population
FROM city
WHERE CitiesName = 'Rotterdam';

==
8.What's the top 10 countries by Surface Area ?
SELECT Name
FROM country
order by SurfaceArea DESC limit 10;
==

9.What's the top 10 most populated cities?
 SELECT CityName
 FROM City
 Population FROM city ORDER BY Population DESC limit 10;

==
10.What is the population of the world ?
SELECT sum
FROM country;
SELECT sum(Population) As WorldsPopulation
;
