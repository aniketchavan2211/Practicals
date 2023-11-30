-- Create the Room table
CREATE TABLE Room (
    room_no INT PRIMARY KEY,
    room_name VARCHAR(255),
    room_type VARCHAR(10) CHECK (room_type IN ('AC', 'NonAC')),
    charges DECIMAL(10, 2)
);

-- Create the Guest table
CREATE TABLE Guest (
    Guest_code INT PRIMARY KEY,
    Gname VARCHAR(255),
    city VARCHAR(255)
);

-- Insert records into the Room table
INSERT INTO Room VALUES
(1, 'Room1', 'AC', 8000),
(2, 'Room2', 'NonAC', 6000),
(3, 'Room3', 'AC', 9000),
-- Add more records as needed.

-- Insert records into the Guest table
INSERT INTO Guest VALUES
(101, 'John Doe', 'New York'),
(102, 'Jane Smith', 'Los Angeles'),
(103, 'Bob Johnson', 'Chicago');
-- Add more records as needed.

SELECT * FROM Room
WHERE charges BETWEEN 5000 AND 10000;

SELECT Gname FROM Guest
ORDER BY city;

SELECT MIN(charges) FROM Room;

UPDATE Room
SET charges = charges * 1.15
WHERE room_type = 'AC';

SELECT room_name
FROM Room
WHERE room_type = 'NonAC' AND charges > 10000;

SELECT Gname
FROM Guest
JOIN Room ON Guest.Guest_code = Room.room_no
ORDER BY charges DESC
LIMIT 1;

CREATE VIEW NonAC_Rooms_With_Higher_Charges AS
SELECT NonAC.room_name
FROM Room AS NonAC
WHERE NonAC.room_type = 'NonAC' AND NonAC.charges > ANY (SELECT AC.charges FROM Room AS AC WHERE AC.room_type = 'AC');