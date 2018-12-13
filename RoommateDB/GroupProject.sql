
drop database if exists roommate;
create database roommate;
use roommate;
drop table if exists place_type;
drop table if exists place_attributes;
drop table if exists place;
drop table if exists city;
drop table if exists the_user;
drop table if exists has_room;
drop table if exists needs_room;
drop table if exists user_authentication;
drop table if exists user_attributes;


create table the_user
(
user_ID integer,
user_name varchar (500),
photo blob,
social_network varchar (100),
DOB date,
active_user boolean,
email varchar (100),
phone varchar (12)
);


create table city
(
city_ID integer,
zip varchar (5),
city_name varchar (40),
state varchar (2)
);


create table user_attributes
(
user_ID integer,
gender varchar (20),
smoker boolean,
kids boolean,
sexual_orient varchar (20),
cleanliness varchar (100),
party_habits varchar (100),
sleep_habits varchar (100),
food varchar (100),
age_preferences varchar (20)
);


create table user_authentication
(
user_ID integer,
login varchar (100),
user_password varchar (100)
);


create table has_room
(
user_ID integer
);


create table place_type
(
type_ID integer,
place_name varchar (500)
);


create table needs_room
(
user_ID integer,
city_ID integer,
budget double(9, 2),
price_range double(9, 2)
);


create table place
(
place_ID integer,
type_id integer,
city_id integer,
user_id integer,
address varchar (500),
date_avail date,
date_created timestamp,
longitude decimal(10, 7),
latitude decimal(10, 7),
active_place boolean
);



create table place_attributes
(
place_ID integer,
price double(9, 2),
sq_ft double(6, 2),
laundry boolean,
air_cond boolean,
internet boolean,
num_bedrooms integer,
pets boolean,
total_occupant integer,
shared_room boolean,
description text
);


CREATE  TABLE `test`.`name` (
  `nameid` INT NOT NULL AUTO_INCREMENT ,
  `firstname` VARCHAR(45) NULL ,
  `lastname` VARCHAR(45) NULL ,
  PRIMARY KEY (`nameid`)
);

INSERT INTO `test`.`name`
(`firstname`,`lastname`)
VALUES
("Cookie","Monster"),
("Guy","Smiley"),
("Big","Bird"),
("Oscar","Grouch"),
("Alastair","Cookie");