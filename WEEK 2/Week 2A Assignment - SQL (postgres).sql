## WEEK 2 
## ASSIGNMENT - KINGSLEY KOJO KPOKU

## CREATING THREE TABLES - USERS , MOVIES AND RATING 

## CREATING TABLE 1 - USERS 

create table users(
 person_id int primary key,
 person_name varchar(50)
);

## CONFIRMING IF THE TABLE WAS CREATED 
select * from users;

## INSERTING VALUES INTO TABLE 1-USERS

insert into users
values 
(1001,'Kingsley'),
(1002,'Bright'),
(1003,'Skinner'),
(1004,'Onam'),
(1005,'Juliet'),
(1006,'Dylan'),
(1007,'Obed'),
(1008,'Jasmine');

## CONFIRMING THE INSERTION WORKED 
SELECT * FROM USERS ;


## CREATING TABLE 2 - MOVIES 

create table movies(
	movie_id serial primary key,
	title varchar(50),
	genre varchar(50)
);

## CONFIRMING THE TABLE MOVIES WAS CREATED
select * from movies ;

## INSERTING VALUES INTO TABLE MOVIES

insert into movies
values
(2001,'Vikings','Action'),
(2002,'See','Action'),
(2003,'Vampire_Diaries','Supernatural'),
(2004,'Beauty_in_Black','Drama'),
(2005,'Breaking_Bad','Crime'),
(2006,'Black_Panther','Action'),
(2007,'Supacell','Supernatural'),
(2008,'Troy','Historical'),
(2009,'Avatar','Fantasy'),
(2010,'Game_of_Thrones','Fanatasy');

select * from movies ;

## CREATING TABLE 3 - RATINGS


create table ratings(
	person_id int,
	movie_id int,
	rating int check (rating between 1 and 5),
	primary key(person_id,movie_id)
);

select * from ratings ;

-- INSERT VALUES INTO TABLE RATING 

insert into ratings 
values

-- Movie Ratings- Kingsley 

(1001,2001,4),
(1001,2002,3),
(1001,2003,4),
(1001,2004,5),
(1001,2005,4),
(1001,2006,5),
(1001,2007,4),
(1001,2008,5),
(1001,2009,5),
(1001,2010,4),

-- Movie Ratings- Bright

(1002,2001,4),
(1002,2002,3),
(1002,2003,4),
(1002,2004,4),
(1002,2005,5),
(1002,2006,4),
(1002,2007,4),
(1002,2008,Null),
(1002,2009,4),
(1002,2010,5),

-- Movie Ratings- Skinner

(1003,2001,Null),
(1003,2002,Null),
(1003,2003,5),
(1003,2004,5),
(1003,2005,5),
(1003,2006,5),
(1003,2007,5),
(1003,2008,Null),
(1003,2009,5),
(1003,2010,5),

-- Movie Ratings- Onam

(1004,2001,3),
(1004,2002,Null),
(1004,2003,4),
(1004,2004,4),
(1004,2005,4),
(1004,2006,5),
(1004,2007,5),
(1004,2008,4),
(1004,2009,5),
(1004,2010,3),

-- Movie Ratings- Juliet

(1005,2001,3),
(1005,2002,4),
(1005,2003,3),
(1005,2004,2),
(1005,2005,2),
(1005,2006,4),
(1005,2007,3),
(1005,2008,3),
(1005,2009,4),
(1005,2010,4),

-- Movie Ratings- Dylan

(1006,2001,4),
(1006,2002,Null),
(1006,2003,Null),
(1006,2004,Null),
(1006,2005,5),
(1006,2006,Null),
(1006,2007,Null),
(1006,2008,5),
(1006,2009,5),
(1006,2010,5),

-- Movie Ratings- Obed

(1007,2001,5),
(1007,2002,4),
(1007,2003,4),
(1007,2004,5),
(1007,2005,4),
(1007,2006,4),
(1007,2007,4),
(1007,2008,4),
(1007,2009,4),
(1007,2010,4),

-- Movie Ratings- Jasmine

(1008,2001,Null),
(1008,2002,Null),
(1008,2003,Null),
(1008,2004,Null),
(1008,2005,Null),
(1008,2006,5),
(1008,2007,Null),
(1008,2008,Null),
(1008,2009,4),
(1008,2010,Null);

--ALL THREE TABLES CREATED AND VALUES INSERTED

select * from users ;
select * from movies ;
select * from ratings ;


-- USING INNER JOIN TO COMBINE ALL THREE TABLES 

select
*
from users as us
inner join ratings as rat
 on us.person_id= rat.person_id
INNER JOIN movies AS mov
    on rat.movie_id = mov.movie_id ;






	