-- 집합(테이블 합치기)
SELECT StdName, Region FROM stdTbl
UNION
SELECT ClubName, ClubRoom FROM clubTbl
-- 중복 제거
SELECT CAST(Id AS VARCHAR), StdId FROM regInfoTbl
UNION
SELECT ClubName, ClubRoom From clubTbl
;

-- 중복 포함
SELECT stdName, Region FROM stdTbl
UNION ALL
SELECT stdName, Region FROM stdTbl

-- 뒤에 테이블 기준 만족하는 데이터만 추려내는 것
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL
