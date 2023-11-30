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
    area_type VARCHAR(10)
);

-- Insert records into Person table
INSERT INTO Person (pname, birthdate, income) VALUES
('Alice', '1990-05-15', 12000),
('Bob', '1985-08-20', 8000),
('Charlie', '1995-02-10', 15000),
('David', '1980-11-25', 11000),
('Eva', '1992-09-05', 13000);

-- Insert records into Area table
INSERT INTO Area (aname, area_type) VALUES
('Pune', 'Urban'),
('Delhi', 'Urban'),
('Mumbai', 'Urban'),
('Village1', 'Rural'),
('Village2', 'Rural');

--Query
SELECT * FROM Person WHERE income > 10000;

UPDATE Person SET pnumber = 'Delhi' WHERE pnumber = 'Pune';

SELECT COUNT(*) FROM Area WHERE area_type = 'Urban';

SELECT COUNT(*) FROM Person WHERE birthdate = '_______'; -- Replace with the specific birthdate

SELECT pname FROM Person JOIN Area ON Person.pnumber = Area.pnumber WHERE aname = '______'; -- Replace with the specific area name

SELECT AVG(income) AS avg_income, COUNT(*) AS num_people
FROM Person
WHERE pnumber IN (SELECT aname FROM Area WHERE area_type = 'Urban');

CREATE VIEW PersonWithArea AS
SELECT p.pnumber, pname, birthdate, income, aname
FROM Person p
JOIN Area a ON p.pnumber = a.pnumber;
