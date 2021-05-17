-- 테이블 생성
USE sampleDB;
GO

-- DDL로 테이블 생성
CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY IDENTITY(1, 1),
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL로 테이블 수정

ALTER TABLE ddlTbl ADD newColumn VARCHAR(10) NOT NULL;

DROP TABLE ddlTbl;

CREATE TABLE ddlTbl
(
	Id int NOT NULL PRIMARY KEY,
	name NVARCHAR(20) NOT NULL,
	regDate DATETIME
);
GO

-- DDL 한 개이상 컬럼 PK로 지정 테이블 생성
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

-- userTBL에 email(유니크제약조건) 추가
-- buyTBL데이터 다 삭제, userTBL 데이터 다 삭제
-- userTBL(email) 컬럼삭제 뒤, 밑의 쿼리 실행
ALTER TABLE userTBL
  ADD email VARCHAR(50) NOT NULL UNIQUE;

-- CHECK
ALTER TABLE userTBL
  ADD CONSTRAINT CK_birthYear
  CHECK (birthYear >= 1900 AND birthYear <= YEAR(GETDATE()));
-- 2021까지

SELECT * FROM sampleDB.dbo.userTBL;

SELECT * FROM sqlDB.dbo.buyTbl;

SELECT * FROM AdventureWorksLT2019.SalesLT.Product;
SELECT * FROM AdventureWorksLT2019.dbo.ErrorLog;

