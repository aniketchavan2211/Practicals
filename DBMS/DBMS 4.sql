-- Create Policy table
CREATE TABLE Policy (
    pno SERIAL PRIMARY KEY,
    pname VARCHAR(255),
    premium_amt DECIMAL,
    policy_type VARCHAR(20)
);

-- Create Customer table
CREATE TABLE Customer (
    cno SERIAL PRIMARY KEY,
    cname VARCHAR(255),
    city VARCHAR(255),
    agent_name VARCHAR(255)
);

-- Insert records into Policy table
INSERT INTO Policy (pname, premium_amt, policy_type) VALUES
('Policy1', 1000, 'Yearly'),
('Policy2', 500, 'Half-yearly'),
('Policy3', 200, 'Monthly'),
('Policy4', 1500, 'Yearly');

-- Insert records into Customer table
INSERT INTO Customer (cname, city, agent_name) VALUES
('Customer1', 'City1', 'Agent1'),
('Customer2', 'City2', 'Agent2'),
('Customer3', 'City1', 'Agent3'),
('Customer4', 'City3', 'Agent1');

--Query
SELECT * FROM Customer WHERE city = 'City1';

SELECT AVG(premium_amt) FROM Policy;

SELECT COUNT(*) FROM Customer c JOIN Policy p ON c.cno = p.pno WHERE p.pname = 'Jeevan Anand';

UPDATE Policy SET premium_amt = premium_amt * 1.1 WHERE policy_type = 'Monthly';

SELECT policy_type, COUNT(*) FROM Policy GROUP BY policy_type;

SELECT policy_type
FROM (
    SELECT policy_type, AVG(premium_amt) AS avg_premium
    FROM Policy
    GROUP BY policy_type
    ORDER BY avg_premium DESC
    LIMIT 1
) AS subquery;


CREATE VIEW CustomerWithMostPolicies AS
SELECT c.cname, COUNT(*) AS num_policies
FROM Customer c
JOIN Policy p ON c.cno = p.pno
GROUP BY c.cname
ORDER BY num_policies DESC
LIMIT 1;

