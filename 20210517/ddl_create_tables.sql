USE sampleDB;
GO

CREATE TABLE userTBL
(
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name NVARCHAR(10) NOT NULL,
	birthyear INT NOT NULL,
	height SMALLINT
);

-- DDL buytable
CREATE TABLE buyTBL
(
	num INT NOT NULL PRIMARY KEY, -- 기본키
	userID CHAR(8) NOT NULL
	  FOREIGN KEY REFERENCES userTBL(userID), -- 외래키, Relational!
	prodName NCHAR(6) NOT NULL,
	price INT NOT NULL
)