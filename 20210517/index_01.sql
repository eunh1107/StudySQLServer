CREATE SCHEMA production; -- production 스키마 생성(그룹)
GO

CREATE TABLE production.parts(
	part_id INT NOT NULL,
	part_name VARCHAR(100)
);
GO

SELECT * FROM production.parts
