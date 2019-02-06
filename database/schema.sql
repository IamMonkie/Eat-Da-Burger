CREATE DATABASE burger_db;
USE burger_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name, devoured) VALUES ('regular', FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES ('Supreme', FALSE);
INSERT INTO burgers (burger_name, devoured) VALUES ('super awesome', FALSE);

SELECT * FROM burgers;