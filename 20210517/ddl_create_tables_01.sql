-- ���̺� ����
USE sampleDB;
GO

-- DDL�� ���̺� ����
CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1, 1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL�� ���̺� ����

ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL �� ���̻� �÷� PK�� ���� ���̺� ����
CREATE TABLE prodTbl
(
	prodCode NCHAR(3) NOT NULL,
	prodID NCHAR(4) NOT NULL,
	prodDate DATETIME NOT NULL,
	prodCur NCHAR(10) NULL,
	CONSTRAINT PK_prodTbl_prodCode_prodID
		PRIMARY KEY (prodCode, prodID)
);
GO

-- userTBL�� email(����ũ��������) �߰�
-- buyTBL������ �� ����, userTBL ������ �� ����
-- userTBL(email) �÷����� ��, ���� ���� ����
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));
-- 2021����

SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog;

