-- SQL Programming
DECLARE @VAR1 INT  -- 변수 선언
SET @VAR1 = 170

IF @VAR1 < 170
BEGIN
	PRINT '@기준값이 작습니다.'
END
ELSE
BEGIN
	SELECT * FROM userTbl WHERE height> @VAR1;
END