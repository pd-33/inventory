SHOW DATABASE;

CREATE TABLE admins (
    adminID     INT(11) NOT NULL  AUTO_INCREMENT, 
    emailAddress VARCHAR(255) NOT NULL UNIQUE, 
    password    CHAR(64) NOT NULL, 
    firstName   VARCHAR(60) NOT NULL,
    lastName VARCHAR(60) NOT NULL,
    PRIMARY KEY (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;

DESCRIBE admins;

INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('taylor@guitarshop.com', SHA2 ('myL0ngP@ssword', 256), 'Taylor', 'Swift');

SELECT datafields FROM table;
SELECT * FROM admins;
SELECT emailAddress, firstName FROM admins ORDER BY firstName;
SELECT * FROM admins WHERE lastName = 'Swift';

INSERT INTO table [(fieldList)] VALUES (valuelist);
INSERT INTO admins (emailAddress, password, firstName, lastName) VALUES ('nottaylor@guitarshop.com', SHA2 ('NotmyL0ngPassword', 256), 'Swift', 'Taylor');

UPDATE table SET datafield = value [WHERE condition];
UPDATE admins SET emailAddress = 'taylorswift@guitarshop.com' WHERE adminID = 1;

DELETE FROM table [WHERE condition];
DELETE FROM admins WHERE adminID = 1;