CREATE OR ALTER FUNCTION ufn_getAge(@bYear INT)
RETURNS INT
AS
BEGIN
	DECLARE @age INT
	SET @age = YEAR(GETDATE()) - @bYear + 1 -- �ѱ�����
	RETURN(@age)
END
GO

SELECT userID, name
	, birthYear, dbo.ufn_getAge(birthYear) AS '����'
	, addr, height 
	FROM userTbl;

SELECT userID, name
	, birthYear
	, dbo.ufn_getAge(birthYear) AS '����'
	, dbo.ufn_getZodiac(birthYear) AS '��'
	, addr
	, height, dbo.ufn_getInch(height) AS 'Ű(��ġ)' 
	FROM userTbl;


