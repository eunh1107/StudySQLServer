CREATE OR ALTER FUNCTION ufn_getUsers(@height INT)
	RETURNS TABLE
AS
	RETURN(
		SELECT * FROM userTbl
			WHERE height > @height
			)
GO

SELECT * FROM dbo.ufn_getUsers(180);

SELECT * FROM dbo.ufn_userGrade(1975);