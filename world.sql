
drop database if exists world;
create database if not exists world;
use world;
show tables;
drop table if exists country;

CREATE TABLE country 
( CountryID VARCHAR(3)NOT NULL,
Countryname CHAR (52) NOT NULL,
CountrySurfaceArea FLOAT(10,2) DEFAULT 0.00,
Continent ENUM ('Africa','Asia', 'Europe') NOT NULL DEFAULT 'Asia',
CountryPopulation INT (11) NOT NULL DEFAULT 0,
primary key (CountryID)
  )ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
show tables;

insert into country value(001, “Sweden”, 9,995,000, “Europe”, 450295);
insert into country value(002, “Denmark”, 5749000, “Europe”, 42933);
insert into country value(003,“Norway”,52580000, “Europe”, 385203);
insert into country value(004,“Germany”, 82790000, “Europe”, 357386 );
insert into country value(005, “Italia”, 60590000, “Europe”, 301338);
insert into country value(006, “SouthAfrica”, 56720000, “Africa”, 1220000);
insert into country value(007, “Kenya”, 49007000, “Africa”, 580367);
insert into country value(008, “Holland”, 17008000, “Europe”, 41543);
insert into country value(009, “china”,1435313098, “Asia”, 9597000);
insert into country value(010, “Japan”, 126754072, “Asia”, 377973);

========= 
insert into cities values(CityId, CitiyName, CityPopulation, CitiesCountry)
drop table if exists city;

CREATE TABLE city 
( CityId VARCHAR(3)NOT NULL,
CityName CHAR (52) NOT NULL,
 CityPopulation INT (11) NOT NULL DEFAULT 0,
 CountryID VARCHAR(3)NOT NULL, primary key
    (CityId),
  foreign key (CountryID) 
  REFERENCES country (CountryID) )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
insert into city value(101, “Lund”, 92000, 1);
insert into city value(102, “Copenhaegen”, 602481, 2);
insert into city value(103, “Oslo”, 634293, 3);
insert into city value(104, “Berlin”, 3575000, 4);
insert into city value(105, “Rome”, 2873000, 5);
insert into city value(106, “Johannesburg”, 957441, 6);
insert into city value(107, “Nairobi”, 3134000, 7);
insert into city value(108, “Amsterdam”, 821752, 8);
insert into city value(109, “Beijing“, 21054000, 9);
insert into city value(110, “Tokyo”, 9273000, 10);
