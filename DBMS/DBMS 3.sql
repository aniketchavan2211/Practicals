-- Create Person table
CREATE TABLE Person (
    pnumber SERIAL PRIMARY KEY,
    pname VARCHAR(255),
    birthdate DATE,
    income DECIMAL
);

-- Create Area table
CREATE TABLE Area (
    aname VARCHAR(255) PRIMARY KEY,
    area_type VARCHAR(10),
    pincode INTEGER
);

-- Insert records into Person table
INSERT INTO Person (pname, birthdate, income) VALUES
('John', '1990-05-15', 50000),
('Alice', '1985-07-20', 60000),
('Robert', '1992-02-10', 75000),
('Mary', '1988-11-05', 55000);

-- Insert records into Area table
INSERT INTO Area (aname, area_type, pincode) VALUES
('KalyaniNagar', 'urban', 411001),
('Camp', 'urban', 411002),
('VillageA', 'rural', 411101),
('VillageB', 'rural', 411102);

--Query
SELECT * FROM Person WHERE pname LIKE 'R%';

SELECT pname FROM Person WHERE EXTRACT(MONTH FROM birthdate) = 7;

SELECT * FROM Person ORDER BY income;

SELECT COUNT(*) FROM Area WHERE area_type = 'urban';

UPDATE Area SET pincode = 411036 WHERE aname = 'KalyaniNagar';

SELECT p1.pname
FROM Person p1
JOIN Area a1 ON p1.aname = a1.aname
WHERE p1.income < (SELECT MAX(income) FROM Person p2 JOIN Area a2 ON p2.aname = a2.aname WHERE a2.aname = 'KalyaniNagar') AND a1.aname = 'Camp';

CREATE VIEW SecondMaxIncomeView AS
SELECT *
FROM Person
ORDER BY income DESC
OFFSET 1 LIMIT 1;
