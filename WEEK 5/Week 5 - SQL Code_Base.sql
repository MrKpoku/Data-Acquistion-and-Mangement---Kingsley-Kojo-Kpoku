-- WEEK 5 ASSIGNMENT - AIRLINE DELAYS
-- CREATING THE DATABASE - AIRLINE_DATA

create database airline_data;

--CREATING THE TABLE 
create table airline_performance(
Airline VARCHAR (50),
Status VARCHAR (50),
Los_Angeles INT,
Phoenix INT,
San_Diego INT,
San_Francisco INT,
Seattle INT
);

-- CHECKING THE TABLE 
select * from airline_performance ;


-- INSERTING THE DATA INTO AIRLINE_PERFORMANCE
insert into airline_performance
(airline,status,los_angeles,phoenix,san_diego,san_francisco,seattle)
Values
('Alaska','On_Time',497,221,212,503,1841),
('Alaska','Delayed',62,12,20,102,305),
('AM_West','On_Time',694,4840,383,320,201),
('AM_West','Delayed',117,415,65,129,61);

--CHECKING THE DATASET
select * from airline_performance;


