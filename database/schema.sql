CREATE DATABASE burger_db;
USE burger_db;

CREATE TABLE burgers
(
	id int NOT NULL AUTO_INCREMENT,
	burger_name varchar(255) NOT NULL,
	devoured BOOLEAN DEFAULT false,
	PRIMARY KEY (id)
);

INSERT INTO burgers (burger_name) VALUES ('regular');
INSERT INTO burgers (burger_name) VALUES ('Supreme');
INSERT INTO burgers (burger_name) VALUES ('super awesome');

SELECT * FROM burgers;
