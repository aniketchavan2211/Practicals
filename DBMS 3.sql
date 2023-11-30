-- Create Employee Table
CREATE TABLE Employee (
    eno INT PRIMARY KEY,
    ename VARCHAR(255),
    designation VARCHAR(255),
    salary INT
);

-- Insert Records into Employee Table
INSERT INTO Employee VALUES (1, 'John Doe', 'Manager', 50000);
INSERT INTO Employee VALUES (2, 'Jane Smith', 'Developer', 40000);
-- Add more records as needed

-- Create Department Table
CREATE TABLE Department (
    dno INT PRIMARY KEY,
    dname VARCHAR(255),
    location VARCHAR(255)
);

-- Insert Records into Department Table
INSERT INTO Department VALUES (101, 'IT', 'New York');
INSERT INTO Department VALUES (102, 'HR', 'Calcutta');
-- Add more records as needed

UPDATE Employee SET salary = salary * 1.05;

SELECT AVG(salary) FROM Employee;

SELECT * FROM Department WHERE location = 'YourCity';

SELECT * FROM Employee WHERE ename LIKE '%YourAlphabet';

SELECT location FROM Department WHERE dname = 'HR';

SELECT * FROM Employee WHERE eno NOT IN (SELECT eno FROM Department WHERE location = 'Calcutta');

CREATE VIEW HighSalaryEmployees AS
SELECT ename, salary
FROM Employee
WHERE salary > ALL (SELECT salary FROM Employee WHERE eno IN (SELECT eno FROM Department WHERE dname = 'HR'));
