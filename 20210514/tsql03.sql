-- ���ڿ� �Լ�
SELECT ASCII('A'), CHAR(47); -- ���� ��
SELECT UNICODE('��'), NCHAR(44032); -- ���� ��


-- ���ڿ� ����
SELECT CONCAT('SQL ', 'server ', 2019); -- ���� ��
SELECT 'SQL ' + 'server ' + CAST(2019 AS VARCHAR);

-- �ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world!');
-- C#,java, python ���ڿ��� 0���� ����
-- DB�� 1���� ����

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LIRIM, PTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL Server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING('���ѹα�����!', 5, 2);

SELECT LEN('Hello World');
SELECT LEN('���ѹα�����!');

SELECT LOWER('Hello World!'), UPPER('Hello World!');

-- �����̽� ���� �Լ�
SELECT '	SQL', LTRIM('	SQL		');  -- ��
SELECT '	SQL		', RTRIM('	SQL		'); -- ��
SELECT '	SQL		', TRIM('	SQL		'); -- ��

-- Replace ���� �ֻ�
SELECT REPLACE('SQL Server 2019', 'server', '����');

-- STR ���� ��
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT ���� ��
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); -- �ѱ���
SELECT FORMAT(GETDATE(), 'MM-dd-yyyy hh:mm:ss'); -- �̱���



