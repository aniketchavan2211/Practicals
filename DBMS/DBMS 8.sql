-- Create Student table
CREATE TABLE Student (
    sno SERIAL PRIMARY KEY,
    s_name VARCHAR(255),
    s_class VARCHAR(5)
);

-- Create Teacher table
CREATE TABLE Teacher (
    tno SERIAL PRIMARY KEY,
    t_name VARCHAR(255),
    yrs_experience INT,
    designation VARCHAR(255)
);

-- Create Student_Teacher table (for many-to-many relationship with Subject as a descriptive attribute)
CREATE TABLE Student_Teacher (
    sno INT,
    tno INT,
    subject VARCHAR(255),
    PRIMARY KEY (sno, tno),
    FOREIGN KEY (sno) REFERENCES Student(sno),
    FOREIGN KEY (tno) REFERENCES Teacher(tno)
);

-- Insert records into Student table
INSERT INTO Student (s_name, s_class) VALUES
('Alice', 'FY'),
('Bob', 'SY'),
('Charlie', 'TY'),
('David', 'FY');

-- Insert records into Teacher table
INSERT INTO Teacher (t_name, yrs_experience, designation) VALUES
('Prof. Smith', 7, 'Professor'),
('Prof. Patel', 5, 'Assistant Professor'),
('Prof. Kumar', 10, 'Associate Professor');

-- Insert records into Student_Teacher table
INSERT INTO Student_Teacher (sno, tno, subject) VALUES
(1, 1, 'Math'),
(2, 1, 'Physics'),
(3, 2, 'Chemistry'),
(4, 3, 'Biology');

--Query
SELECT * FROM Teacher WHERE yrs_experience > 5;

SELECT * FROM Student WHERE s_class = 'FY';

SELECT COUNT(DISTINCT tno) FROM Student_Teacher WHERE subject = 'Math';

DELETE FROM Student WHERE sno = ___; -- Replace ___ with the sno value

ALTER TABLE Teacher ADD COLUMN designation VARCHAR(255);

SELECT t.t_name, st.subject, COUNT(DISTINCT st.sno) AS num_students
FROM Teacher t
JOIN Student_Teacher st ON t.tno = st.tno
GROUP BY t.t_name, st.subject;

CREATE VIEW TeacherMaxSubjects AS
SELECT t.t_name, COUNT(DISTINCT st.subject) AS num_subjects
FROM Teacher t
JOIN Student_Teacher st ON t.tno = st.tno
GROUP BY t.t_name
ORDER BY num_subjects DESC
LIMIT 1;
