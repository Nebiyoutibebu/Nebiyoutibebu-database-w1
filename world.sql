drop database if exists world;
create database if not exists world;
use world;
show tables;
drop table if exists country;

CREATE TABLE country 
( CountryID VARCHAR(3)NOT NULL,
Countryname CHAR (52) NOT NULL,
CountryPopulation INT (11) NOT NULL DEFAULT 0,
Continent ENUM ('Africa','Asia', 'Europe') NOT NULL DEFAULT 'Asia',
CountrySurfaceArea FLOAT(10,2) DEFAULT 0.00,
primary key (CountryID)
  )ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
show tables;


insert into country value(001, 'Sweden', 9995000, 'Europe', 450295);
insert into country value(002, 'Denmark', 5749000, 'Europe', 42933);
insert into country value(003,'Norway',52580000, 'Europe', 385203);
insert into country value(004,'Germany', 82790000, 'Europe', 357386 );
insert into country value(005, 'Italia', 60590000, 'Europe', 301338);
insert into country value(006, 'SouthAfrica', 56720000, 'Africa', 1220000);
insert into country value(007, 'Kenya', 49007000, 'Africa', 580367);
insert into country value(008, 'Holland', 17008000, 'Europe', 41543);
insert into country value(009, 'china',1435313098, 'Asia', 9597000);
insert into country value(010, 'Japan', 126754072, 'Asia', 377973);



CREATE TABLE city 
( CityId VARCHAR(3)NOT NULL,
CityName CHAR (52) NOT NULL,
 CityPopulation INT (11) NOT NULL DEFAULT 0,
 CountryID VARCHAR(3)NOT NULL, primary key
    (CityId),
  foreign key (CountryID) 
  REFERENCES country (CountryID) )ENGINE=InnoDB DEFAULT CHARSET=latin1;
    
insert into city value(101, 'Lund', 92000, 001);
insert into city value(102, 'Copenhaegen', 602481, 002);
insert into city value(103, 'Oslo', 634293, 003);
insert into city value(104, 'Berlin', 3575000,004);
insert into city value(105, 'Rome', 2873000, 005);
insert into city value(106, 'Johannesburg', 957441,006);
insert into city value(111, 'Nairobi', 3134000,007);
insert into city value(108, 'Amsterdam', 821752,008);
insert into city value(109, 'Beijing', 21054000,009);
insert into city value(113, 'Tokyo', 9273000,010);
