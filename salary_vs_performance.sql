-- Create Two Tables
CREATE TABLE salary (
	us_state VARCHAR(25) PRIMARY KEY,
	salary INT
	);

CREATE TABLE performance (
	us_state VARCHAR(25) PRIMARY KEY,
	at_or_above_basic INT,
	at_or_above_proficient INT
	);
	
DROP TABLE performance
DROP TABLE salary
	
	-- Query to check successful load
SELECT * FROM salary;

SELECT * FROM performance;

-- Join tables on county_id
SELECT performance.us_state, salary.salary, performance.at_or_above_basic, performance.at_or_above_proficient
FROM performance
FULL OUTER JOIN salary
ON performance.us_state = salary.us_state;
