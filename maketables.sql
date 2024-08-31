Drop TABLE members cascade constraints; 

CREATE TABLE members ( 
userID VARCHAR(50) NOT NULL, 
uName VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL,
PRIMARY KEY(userID));

TRUNCATE TABLE members;

Drop TABLE movies cascade constraints;

CREATE TABLE movies ( 
movieID VARCHAR(50) NOT NULL, 
title VARCHAR(50) NOT NULL, 
year NUMBER NOT NULL, 
PRIMARY KEY(movieID));

TRUNCATE TABLE movies; 

Drop TABLE genres cascade constraints;

CREATE TABLE genres ( 
genreID VARCHAR(50) NOT NULL, 
gName VARCHAR(50) NOT NULL, 
movieID VARCHAR(50) NOT NULL,
FOREIGN KEY (movieID) REFERENCES movies(movieID));

TRUNCATE TABLE genres;

Drop TABLE rate cascade constraints;

CREATE TABLE rate ( 
userID VARCHAR(50) NOT NULL, 
movieID VARCHAR(50) NOT NULL, 
reviewDate DATE NOT NULL,
grade VARCHAR(50) NOT NULL, 
Primary KEY(userID, movieID),
FOREIGN KEY (userID) REFERENCES members(userID),
FOREIGN KEY (movieID) REFERENCES movies(movieID)); 

TRUNCATE TABLE rate; 