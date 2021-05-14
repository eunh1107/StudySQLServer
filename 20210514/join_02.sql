-- 3개의 테이블 내부조인
SELECT s.StdID, s.StdName
	 , r.ClubName 
	 , c.ClubName, r.RegDate
  FROM stdTbl AS s
 INNER JOIN regInfoTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN clubTbl AS c
	ON c.ClubName = r.ClubName

