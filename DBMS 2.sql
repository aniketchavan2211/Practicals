-- Create Employee table
CREATE TABLE Employee (
    eno INT PRIMARY KEY,
    ename VARCHAR(255),
    designation VARCHAR(255),
    salary DECIMAL
);

-- Insert records into Employee table
INSERT INTO Employee VALUES (1, 'John Doe', 'Manager', 50000);
INSERT INTO Employee VALUES (2, 'Jane Smith', 'Developer', 45000);
-- Add more records as needed

-- Create Department table
CREATE TABLE Department (
    dno INT PRIMARY KEY,
    dname VARCHAR(255),
    location VARCHAR(255)
);

-- Insert records into Department table
INSERT INTO Department VALUES (101, 'HR', 'New York');
INSERT INTO Department VALUES (102, 'IT', 'San Francisco');
-- Add more records as needed

-- i. Give a 5% raise in salary to all employees
UPDATE Employee SET salary = salary * 1.05;

-- ii. Display average salary of an employee
SELECT AVG(salary) AS average_salary FROM Employee;

-- iii. List the details of all departments located at _____city.
SELECT * FROM Department WHERE location = 'YourCity';

-- iv. Display the details of employees whose names end with an alphabet___.
SELECT * FROM Employee WHERE ename LIKE '%A'; -- Replace 'A' with the desired alphabet

-- v. Display the location of ‘HR’ department.
SELECT location FROM Department WHERE dname = 'HR';

-- C. Write a query to list the details of employees who do not work in any of the departments located at ‘Calcutta’.
SELECT * FROM Employee
WHERE eno NOT IN (
    SELECT eno FROM Employee INNER JOIN Department ON Employee.dno = Department.dno
    WHERE location = 'Calcutta'
);

-- OR

-- Create a view to list the names of employees whose salary is greater than all the employees working in ‘HR’ department.
CREATE VIEW HighSalaryEmployees AS
SELECT ename, salary FROM Employee
WHERE salary > ALL (SELECT salary FROM Employee INNER JOIN Department ON Employee.dno = Department.dno WHERE dname = 'HR');
