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
-- ���̵�, �̸�, Ű
SELECT userID, name, height FROM userTbl
 WHERE height >= 180 AND birthYear >= 1970;