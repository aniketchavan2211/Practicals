-- Create Item table
CREATE TABLE Item (
    item_no SERIAL PRIMARY KEY,
    name VARCHAR(255),
    quantity INT
);

-- Create Supplier table
CREATE TABLE Supplier (
    s_no SERIAL PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255)
);

-- Create Item_Supplier table (for many-to-many relationship with rate as a descriptive attribute)
CREATE TABLE Item_Supplier (
    item_no INT,
    s_no INT,
    rate DECIMAL,
    PRIMARY KEY (item_no, s_no),
    FOREIGN KEY (item_no) REFERENCES Item(item_no),
    FOREIGN KEY (s_no) REFERENCES Supplier(s_no)
);

-- Insert records into Item table
INSERT INTO Item (name, quantity) VALUES
('Mouse', 50),
('Keyboard', 30),
('Monitor', 20),
('CD', 15);

-- Insert records into Supplier table
INSERT INTO Supplier (name, city) VALUES
('Supplier1', 'City1'),
('Supplier2', 'City2'),
('Supplier3', 'City1'),
('Supplier4', 'City3');

-- Insert records into Item_Supplier table
INSERT INTO Item_Supplier (item_no, s_no, rate) VALUES
(1, 1, 25.00),
(2, 2, 15.00),
(3, 3, 100.00),
(4, 4, 5.00);

UPDATE Item SET quantity = 80 WHERE name = 'Mouse';

SELECT * FROM Supplier WHERE name LIKE 'M%';

SELECT COUNT(*) FROM Item;

SELECT name FROM Supplier WHERE city <> 'City2';

SELECT name FROM Item WHERE quantity < 10;

SELECT DISTINCT s.name
FROM Supplier s
WHERE s.s_no NOT IN (
    SELECT DISTINCT isup.s_no
    FROM Item_Supplier isup
    JOIN Item i ON isup.item_no = i.item_no
    WHERE i.name IN ('CD', 'Mouse')
);

CREATE VIEW SupplierItemList AS
SELECT s.name AS supplier_name, i.name AS item_name
FROM Supplier s
JOIN Item_Supplier isup ON s.s_no = isup.s_no
JOIN Item i ON isup.item_no = i.item_no;
