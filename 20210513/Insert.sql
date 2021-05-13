INSERT INTO testTbl VALUES ('홍길동', '서울');
INSERT INTO testTbl (userName, addr) VALUES ('설현', '서울');
INSERT INTO testTbl (userName) VALUES ('아이유');
INSERT INTO testTbl (addr, userName) VALUES ('세종', '김형욱');

INSERT INTO testTbl (userName) VALUES ('홍길순');
SELECT * FROM testTBL;

-- DELETE FROM testTbl;

INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993, '서울');

SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES ('NWH', '남우현', 1991, '서울', 173);

SELECT * FROM userTbl;