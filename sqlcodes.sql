--This is a code repository of codes. Exercises will be in different files.
SQL UDEMY Bootcamp 2022 

New Note
#this is used on goorm IDE similar to cloud 9

#This is for starting the cloud 9 CLI,
mysql-ctl cli;

#mysql command line client

show databases;


CREATE DATABASE filename;

CREATE DATABASE hello_world_db;


#Delete Database
DROP DATABASE <NAME>;

Remember to always end with ;


#using a database and using it among databases
use <database name>;


#confirming which database i am currently using
SELECT database();

#creating a table syntax
create table tablename
(	column_name datatype,
	column_name datatype
	);

create table tablename
(	name varchar(100),
	age int
	);

#display table
SHOW TABLES;

#show columns
SHOW COLUMNS FROM <tablename>;
OR
DESC <tablename>;

#delete table
DROP TABLE <tablename>

#Add data into your tables

INSERT INTO tablename(column name1, column_name 2)
VALUES ('val to column1', val to column 2);

#mulitple inserts
INSERT INTO TABLENAME (name, age)
VALUES	(value, value),
		('tomisin', 50),
		('Aliu', 10);


#inserting a quote inside a varchar

Alternate single and double quotes:
"This text has 'quotes' in it" or 'This text has "quotes" in it'


# when you encounter error instead of a warnings in mysql

The solution is to run the following
command in your mysql shell: set sql_mode='';

#check warnings for truncated data

SHOW WARNINGS;


#NULL value is permitted to YES
this tells us some values can be left without value in a row in column
e.g INSERT INTO dogtable
	VAL

#Example of when a NULL value is created in sq
INSERT INTO dogtable(name)
VALUES ('Juliedog');

it creates on value for specified col while others remain NULL

#you can also create an empty value as well

INSERT INTO dogtable()
VALUES ();

#FIX the problem of NULL by adding NOT NULL when creating tables

CREATE TABLE cats2(name VARCHAR(100) NOT NULL,
age INT NOT NULL);

#WHAT NOTNULL does to our table

#if we insert into NOTNULL column with no values
it runs but gives a warning. 'No default value' and adds 0 for int for example.

for VARCHAR it leaves the columns empty string. it is an empty string.


#setting default value, which is usually NULL in the table column

CREATE TABLE cat3(
Name VARCHAR(100) DEFAULT 'unamed',
age INT DEFAULT 99
);

#COMBINE NOTNULL with DEFAULT ON MY TABLE
#remember default is for default column
while NULL is for NULL column

CREATE TABLE cats3
(Name VARCHAR(100) NOT NULL DEFAULT 'unnamed',
(age INT NOT NULL DEFAULT 99);

#we can still set values to NULL

INSERT INTO dog3 if we dont put NOT NULL. Gives error, age or name cannot be NULL
when we indicate NOT NUll when creating tables


#KEY(Primary Key)
makes a value uniquely identifiable
CREATE TABLE unique_dogs(dog_id INT N0T NULL, name VARCHAR(100),
						age INT
						, PRIMARY KEY(dog_id));


#id is not the only thing we make primary key
e.g username as the primary key

#AUTO_INCREMENT is used if I want to automate ID increment without
manually inputing the id myself.
--autoincrement is placed in the column extra with autoincrement value. DESC table

CREATE TABLE unique_dogs(dog_id INT N0T NULL AUTO_INCREMENT,
						name VARCHAR(100),
						age INT
						,PRIMARY KEY(dog_id));

--So when inserting, we don't need to specifiy dog_id number anymore
INSERT INTO dog_id(name, age)
	VALUES('manuel', 42);


--Exercise pg 59
--solution

CREATE TABLE employees(id INT NOT NULL AUTO_INCREMENT, LAST_NAME VARCHAR(255) NOT NULL,
first_name VARCHAR(255) NOT NULL, middle_name VARCHAR(50), age INT NOT NULL,
current_status VARCHAR(50) NOT NULL DEFAULT 'employed', PRIMARY KEY(id));



--CRUD
Create Read update and Delete

--select specifics
SELECT name,age FROM cats;

--WHERE keywords
--to select someone out of thousands of data, update, delete.


--SELECT name, age from cats WHERE breeds ='Tabby';
SELECT * FROM cat_id WHERE cat_id = age;

--#ALIAS
SELECT cat_id AS id, name FROM cats;
SELECT cat_is AS id, name FROM cats;


--UPDATE

UPDATE cats SET breed='shorthair' WHERE breed ='Tabby';
--Try selecting before you update or delete.
SELECT * FROM cats;
--you dont want to update the wrong data.


--DELETE
SELECT * FROM cats WHERE name='Egg';
DELETE FROM cats WHERE name='Egg';


DELETE FROM cats;
WHERE CONDITION;
--This deletes all entries in the table but the table is intact.



--8/26/2022
--CRUDE EXERCISE. EX_CRUDE





CREATE TABLE shirts(shirts_id INT AUTO_INCREMENT NOT NULL, 
article VARCHAR(15) NOT NULL, color VARCHAR(10) NOT NULL, 
shirt_size VARCHAR(5) NOT NULL, last_worn INT NOT NULL, 
shirts_id));

--show columns
DESC shirts;

INSERT INTO shirts( shirts_id, article, color, shirt_size, last_worn)
    VALUES(1, 't-shirt', 'white', 's', 10);

INSERT INTO shirts( shirts_id, article, color, shirt_size, last_worn)
    VALUES(1, 't-shirt', 'white', 's', 10);
	('t-shirt', 'white', 's', 10);
