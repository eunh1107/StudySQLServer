-- 프로그래밍 시작
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5, 2); -- 정수부분 3, 소수점 2
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4, 3); -- 정수부분 1, 소수점 3


SET @myVar1 = 400;
SET @myVar2 = 3.14;
SET @myVar3 = '가수이름 => ';
SET @inchUnit = 0.393;

-- SELECT @myVar1, @myVar2
-- SELECT @myVar3 AS 'string', name FROM userTbl WHERE height>180; 
SELECT name, height * @inchUnit AS '키(인치)' FROM userTbl;