-- SQL Programming
DECLARE @VAR1 INT  -- ���� ����
SET @VAR1 = 170

IF @VAR1 < 170
BEGIN
	PRINT '@���ذ��� �۽��ϴ�.'
END
ELSE
BEGIN
	SELECT * FROM userTbl WHERE height> @VAR1;
END