CREATE TABLE department (
    dnumber INT PRIMARY KEY,
    dname VARCHAR(25) NOT NULL UNIQUE,
    dlocation VARCHAR(20)
);

CREATE TABLE project (
    pnumber INT PRIMARY KEY,
    pname VARCHAR(30) NOT NULL,
    plocation VARCHAR(20),
    hours DECIMAL(5,2),
    amount DECIMAL(7,2),
    dnumber INT DEFAULT 1,
    FOREIGN KEY (dnumber) REFERENCES department(dnumber)
);

INSERT INTO department VALUES 
(5, 'Research', 'Bellaire'),
(4, 'Administration', 'Stafford'),
(3, 'Sales', 'Stafford'),
(2, 'Purchase', 'Stafford'),
(1, 'Headquarters', 'Houston');

INSERT INTO project VALUES
(10, 'ProductX', 'Bellaire', 10.5, 5500.50, 5),
(11, 'ProductY', 'Sugarland', 8.5, 40000.50, 5),
(12, 'ProductZ', 'Houston', 4.5, 30000.10, 1),
(20, 'Newbenefits', 'Stafford', 140.0, 43000.40, 4),
(30, 'Reorganization', 'Houston', 125.0, 25000.10, 1),
(31, 'Computerization', 'Stafford', 40.0, 38000.40, 4),
(40, 'Construction', 'Bellaire', 125.0, 55000.00, 5),
(41, 'Plantation', 'Bellaire', 50.0, 25000.10, 1);

ALTER TABLE project
ADD CONSTRAINT chk_hours CHECK (hours BETWEEN 10 AND 200);

------------------------------------------------------------------
SELECT pnumber, pname, dnumber, hours 
FROM project 
WHERE hours > 100;

SELECT SUM(amount) AS total_amount_allocated 
FROM project;


SELECT p.pnumber, p.pname, p.dnumber, p.hours
FROM project p
JOIN department d ON p.dnumber = d.dnumber
WHERE d.dname = 'Research' OR p.hours > 100;


SELECT d.dname, COUNT(p.pnumber) AS project_count
FROM department d
LEFT JOIN project p ON d.dnumber = p.dnumber
GROUP BY d.dname;



SELECT d.dnumber, d.dname, SUM(p.hours) AS total_hours
FROM department d
JOIN project p ON d.dnumber = p.dnumber
WHERE p.amount > 20000 AND p.hours > 150
GROUP BY d.dnumber, d.dname
ORDER BY total_hours DESC;

SELECT dname
FROM department
WHERE dnumber NOT IN (SELECT DISTINCT dnumber FROM project);


START TRANSACTION;

-- Step 1: Insert a new project
INSERT INTO project (pnumber, pname, plocation, hours, amount, dnumber)
VALUES (50, 'EcoBuild', 'Austin', 22.0, 16000.00, 3);

-- Step 2: Savepoint
SAVEPOINT sp1;

-- Step 3: Update hours to 26.0
UPDATE project 
SET hours = 26.0 
WHERE pname = 'EcoBuild';

-- Step 4: Rollback to savepoint
ROLLBACK TO sp1;

-- Step 5: Commit remaining changes
COMMIT;

