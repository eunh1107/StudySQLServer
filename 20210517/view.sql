USE sampleDB;
GO

-- VIEW
CREATE VIEW v_userTBL
AS
	SELECT userID, name, addr FROM userTBL;
GO

SELECT userID, name, addr FROM v_userTBL

SELECT * FROM v_userTBL

SELECT userID, num, price FROM buyTBL


CREATE VIEW v_userbuyInfo
AS
	SELECT u.userID, u.name, b.prodName, b.price
	  FROM userTbl as u
	 INNER JOIN buyTbl as b
		ON u.userID = b.userID;
GO

SELECT * FROM v_userbuyInfo
 ORDER BY price DESC;

DROP VIEW v_userTBL

