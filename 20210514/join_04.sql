-- ����(���̺� ��ġ��)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl
-- �ߺ� ����
SELECT CAST(Id AS VARCHAR), StdId FROM regInfoTbl
UNION
SELECT ClubName, ClubRoom From clubTbl
;

-- �ߺ� ����
SELECT stdName, Region FROM stdTbl
UNION ALL
SELECT stdName, Region FROM stdTbl

-- �ڿ� ���̺� ���� �����ϴ� �����͸� �߷����� ��
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL
