-- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM userTbl
 WHERE userID = 'BBK';

SELECT userID, name, addr FROM userTbl
 WHERE name LIKE '%��%';

-- Ư�� ���̺� ���ڵ�(������) ���� Ȯ��
SELECT COUNT(*) FROM userTbl;

-- Ű�� 180�̻��̰�
-- ����⵵�� 1970�����Ŀ� �¾ �����
-- ���̵�, �̸�, Ű ��ȸ
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;

-- ����⵵��(��������)���� �����ؼ� ��ȸ
SELECT * FROM userTbl
 ORDER BY birthYear DESC; -- ASC | DESC

-- SELECT INTO
-- userTbl_New ���̺��� ����(Pk Ű������ �̻���)
SELECT * INTO usertbl_New FROM userTbl;

SELECT * FROM usertbl_New;

SELECT userID, name, addr INTO usertbl_Backup FROM userTbl
 WHERE addr = '����';

SELECT * FROM userTbl_Backup;

SELECT * FROM userTbl_Backup2;
