-- DELECT
-- WHERE을 안 쓰면 사유서
BEGIN TRAN;

DELETE FROM testTbl
 WHERE Id = 4;

DELETE FROM testTbl
 WHERE userName = '홍길동';

SELECT * FROM testTbl;

COMMIT;
ROLLBACK;
