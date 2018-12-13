
-- ********************************************
-- CREATE THE Supplier Parts DATABASE
-- Named supplier_part
-- *******************************************


DROP DATABASE IF EXISTS supplier_part;
CREATE DATABASE supplier_part;

-- select the database
USE supplier_part;


  CREATE TABLE S
  (
	SNUM varchar(10) NOT NULL PRIMARY KEY,
	SNAME varchar(16) NOT NULL UNIQUE,
	STATUS int NOT NULL,
	CITY varchar(20) NOT NULL
  );

  CREATE TABLE P
  (
	PNUM varchar(10) NOT NULL PRIMARY KEY,
	PNAME varchar(18) NOT NULL,
	COLOR varchar(10) NOT NULL,
	WEIGHT decimal(4,1) NOT NULL,
	CITY varchar(20) NOT NULL,
	UNIQUE (PNAME, COLOR, CITY)
  );
  
CREATE TABLE J
  (
	JNUM varchar(10) NOT NULL PRIMARY KEY,
	JNAME varchar(18) NOT NULL,
	CITY varchar(20) NOT NULL
  );

  CREATE TABLE SPJ
  (
	SNUM varchar(10) NOT NULL REFERENCES S,
	PNUM varchar(10)  NOT NULL REFERENCES P,
	JNUM  varchar(10) NOT NULL REFERENCES J,
	QTY int NOT NULL,
	PRIMARY KEY (SNUM, PNUM, JNUM)
  );
  
INSERT INTO S VALUES ('S1', 'Smith', 20, 'London');
INSERT INTO S VALUES ('S2' , 'Jones', 10, 'Paris');
INSERT INTO S VALUES ('S3', 'Blake', 30, 'Paris');
INSERT INTO S VALUES ('S4', 'Clark', 20, 'London');
INSERT INTO S VALUES ('S5', 'Adams', 30, 'Athens');


INSERT INTO P VALUES ('P1', 'Nut', 'Red', 12, 'London');
INSERT INTO P VALUES ('P2', 'Bolt', 'Green', 17, 'Paris');
INSERT INTO P VALUES ('P3', 'Screw', 'Blue', 17, 'Oslo');
INSERT INTO P VALUES ('P4', 'Screw', 'Red', 14, 'London');
INSERT INTO P VALUES ('P5', 'Cam', 'Blue', 12, 'Paris');
INSERT INTO P VALUES ('P6', 'Cog', 'Red', 19, 'London');

INSERT INTO J VALUES ('J1', 'Sorter', 'Paris');
INSERT INTO J VALUES ('J2', 'Display', 'Rome');
INSERT INTO J VALUES ('J3', 'OCR', 'Athens');
INSERT INTO J VALUES ('J4', 'Sorter', 'Athens');
INSERT INTO J VALUES ('J5', 'RAID', 'London');
INSERT INTO J VALUES ('J6', 'EDS', 'Oslo');
INSERT INTO J VALUES ('J7', 'Tape', 'London');

INSERT INTO SPJ VALUES ('S1', 'P1', 'J1', 200);
INSERT INTO SPJ VALUES ('S1', 'P1', 'J4', 700);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J1', 400);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J2', 200);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J3', 200);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J4', 500);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J5', 600);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J6', 400);
INSERT INTO SPJ VALUES ('S2', 'P3', 'J7', 800);
INSERT INTO SPJ VALUES ('S2', 'P5', 'J2', 100);
INSERT INTO SPJ VALUES ('S3', 'P3', 'J1', 200);
INSERT INTO SPJ VALUES ('S3', 'P4', 'J2', 500);
INSERT INTO SPJ VALUES ('S4', 'P6', 'J3', 300);
INSERT INTO SPJ VALUES ('S4', 'P6', 'J7', 300);
INSERT INTO SPJ VALUES ('S5', 'P2', 'J2', 200);
INSERT INTO SPJ VALUES ('S5', 'P2', 'J4', 100);
INSERT INTO SPJ VALUES ('S5', 'P5', 'J5', 500);
INSERT INTO SPJ VALUES ('S5' , 'P5' , 'J7' , 100);
INSERT INTO SPJ VALUES ('S5' ,  'P6' ,  'J2',  200);
INSERT INTO SPJ VALUES ('S5' ,  'P1' , 'J4' , 100);
INSERT INTO SPJ VALUES ('S5',  'P3',  'J4',  200);
INSERT INTO SPJ VALUES ('S5' ,  'P4', 'J4',  800);
INSERT INTO SPJ VALUES ('S5' ,  'P5' ,  'J4' , 400);
INSERT INTO SPJ VALUES ( 'S5' , 'P6' , 'J4', 500);
  