-- Create Student table
CREATE TABLE Student (
    rno SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255)
);

-- Create Teacher table
CREATE TABLE Teacher (
    tno SERIAL PRIMARY KEY,
    tname VARCHAR(255),
    phone_no VARCHAR(15),
    salary DECIMAL
);

-- Create Student_Teacher table (for many-to-many relationship with subject as a descriptive attribute)
CREATE TABLE Student_Teacher (
    rno INT,
    tno INT,
    subject VARCHAR(255),
    PRIMARY KEY (rno, tno, subject),
    FOREIGN KEY (rno) REFERENCES Student(rno),
    FOREIGN KEY (tno) REFERENCES Teacher(tno)
);

-- Insert records into Student table
INSERT INTO Student (name, city) VALUES
('Alice', 'Mumbai'),
('Bob', 'Delhi'),
('Charlie', 'Mumbai'),
('David', 'Bangalore');

-- Insert records into Teacher table
INSERT INTO Teacher (tname, phone_no, salary) VALUES
('Prof. Smith', '9876543210', 60000),
('Prof. Patil', '9876543211', 55000),
('Prof. Kumar', '9876543212', 48000);

-- Insert records into Student_Teacher table
INSERT INTO Student_Teacher (rno, tno, subject) VALUES
(1, 1, 'Math'),
(2, 1, 'Physics'),
(3, 2, 'Chemistry'),
(4, 3, 'Biology');

--Query
SELECT name FROM Student WHERE city = 'Mumbai';

SELECT COUNT(*) FROM Student WHERE city = 'Mumbai';

UPDATE Teacher SET phone_no = '9822131226' WHERE tname = 'Prof. Patil';

SELECT * FROM Teacher ORDER BY tname;

SELECT tname FROM Teacher WHERE salary < 50000;

SELECT DISTINCT tname
FROM Teacher
WHERE tno NOT IN (
    SELECT DISTINCT t.tno
    FROM Teacher t
    JOIN Student_Teacher st ON t.tno = st.tno
    WHERE t.tname = 'Prof. Patil'
);

CREATE VIEW StudentsWithDBMS AS
SELECT s.*
FROM Student s
JOIN Student_Teacher st ON s.rno = st.rno
WHERE st.subject = 'DBMS';

