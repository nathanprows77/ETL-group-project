-- Create Two Tables
CREATE TABLE salary (
	"State" TEXT PRIMARY KEY,
	"2016-2017 Salary" INT
	);
DROP TABLE performance
CREATE TABLE performance (
	"State" TEXT PRIMARY KEY,
	"At or Above Basic" INT,
	"At or Above Proficient" INT
	);
	
	-- Query to check successful load
SELECT * FROM salary;

SELECT * FROM performance;

-- Join tables on county_id
SELECT salary."2016-2017 Salary", performance."At or Above Basic", performance."At or Above Proficient" 
FROM performance
INNER JOIN salary
ON performance."State" = salary."State";
