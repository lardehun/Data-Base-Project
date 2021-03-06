CREATE DATABASE IF NOT EXISTS Meetdb DEFAULT CHARACTER SET utf8;
USE Meetdb;

CREATE TABLE IF NOT EXISTS meetup(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id),
	Start DATETIME NOT NULL,
    Location VARCHAR(150) NOT NULL,
    TOPIC VARCHAR(150) NOT NULL,
    DESCRIPTION VARCHAR(1000) NOT NULL
);
    
CREATE TABLE IF NOT EXISTS statuses(
	Id Integer NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id),
	Value VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS users(
	Id Integer NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (Id),
    Name VARCHAR(100) NOT NULL,
    Birthdate DATETIME NOT NULL,
    Introduction VARCHAR(500),
    Avatar VARCHAR(1000),
    Email VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS meetup_registration(
	Id Integer NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(Id),
    StatusId Integer NOT NULL,
	FOREIGN KEY(StatusId)
		references statuses(Id),
    MeetupId Integer NOT NULL,
    FOREIGN KEY(MeetupId)
		references meetup(Id),
    UserId Integer NOT NULL,
	FOREIGN KEY (UserId)
		references users(Id)
);