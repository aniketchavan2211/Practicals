-- Create Doctor table
CREATE TABLE Doctor (
    dno SERIAL PRIMARY KEY,
    dname VARCHAR(255),
    city VARCHAR(255)
);

-- Create Patient table
CREATE TABLE Patient (
    pno SERIAL PRIMARY KEY,
    pat_name VARCHAR(255),
    city VARCHAR(255),
    disease VARCHAR(255)
);

-- Create Doctor_Patient table (for many-to-many relationship with Fee as descriptive attribute)
CREATE TABLE Doctor_Patient (
    dno INT,
    pno INT,
    fee DECIMAL,
    PRIMARY KEY (dno, pno),
    FOREIGN KEY (dno) REFERENCES Doctor(dno),
    FOREIGN KEY (pno) REFERENCES Patient(pno)
);

-- Insert records into Doctor table
INSERT INTO Doctor (dname, city) VALUES
('Dr. Smith', 'New York'),
('Dr. Patel', 'Mumbai'),
('Dr. Kumar', 'Delhi'),
('Dr. Patil', 'Bangalore');

-- Insert records into Patient table
INSERT INTO Patient (pat_name, city, disease) VALUES
('Alice', 'New York', 'Cancer'),
('Bob', 'Mumbai', 'Fever'),
('Charlie', 'Delhi', 'Asthma'),
('David', 'Bangalore', 'Cancer');

-- Insert records into Doctor_Patient table
INSERT INTO Doctor_Patient (dno, pno, fee) VALUES
(1, 1, 500),
(2, 2, 300),
(3, 3, 200),
(4, 4, 550);

SELECT * FROM Doctor WHERE city = 'Mumbai';

SELECT COUNT(*) FROM Patient;

SELECT pat_name FROM Patient WHERE disease = 'Cancer';

UPDATE Doctor SET city = 'Pune' WHERE dname = 'Dr. Patil';

SELECT pat_name FROM Patient WHERE pat_name LIKE 'A%';

SELECT COUNT(*) 
FROM Doctor_Patient dp
JOIN Doctor d ON dp.dno = d.dno
JOIN Patient p ON dp.pno = p.pno
WHERE p.disease = 'Asthma' AND dp.fee = 200 AND d.dname = 'Dr. Kumar';

CREATE VIEW DoctorMaxPatients AS
SELECT d.dname, COUNT(dp.pno) AS num_patients
FROM Doctor d
JOIN Doctor_Patient dp ON d.dno = dp.dno
GROUP BY d.dname
ORDER BY num_patients DESC
LIMIT 1;
