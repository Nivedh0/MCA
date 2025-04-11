1.Insert  atleast 5 values to each table(must include the following values)
a.job-clerk,salesman,manager etc
b.department name-accounting,research,sales etc
c.employee name – allen,smith,ward etc.
d.dept number	-10,20
e.Location-US

  mysql> INSERT INTO Department VALUES
    -> (10, 'Accounting', 'US'),
    -> (20, 'Research', 'US'),
    -> (30, 'Sales', 'US'),
    -> (40, 'Marketing', 'US'),
    -> (50, 'IT', 'US');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Employee VALUES
    -> (1001, 'Allen', 'Salesman', 1005, '1981-06-01', 1600, 300, 30),
    -> (1002, 'Smith', 'Clerk', 1006, '1987-12-09', 800, NULL, 20),
    -> (1003, 'Ward', 'Salesman', 1005, '1981-02-22', 1250, 500, 30),
    -> (1004, 'Jones', 'Manager', 1007, '1981-04-02', 2975, NULL, 20),
    -> (1005, 'Martin', 'Salesman', 1006, '1981-09-28', 1250, 1400, 30);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO SalaryGrade VALUES
    -> (1, 700, 1200),
    -> (2, 1201, 1400),
    -> (3, 1401, 2000),
    -> (4, 2001, 3000),
    -> (5, 3001, 9999);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

2.Select all information from table employee.

  mysql> SELECT * FROM Employee;
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| empno | ename  | JOB      | managerid | hiredate   | salary | commision | deptno |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
|  1001 | Allen  | Salesman |      1005 | 1981-06-01 |   1600 |       300 |     30 |
|  1002 | Smith  | Clerk    |      1006 | 1987-12-09 |    800 |      NULL |     20 |
|  1003 | Ward   | Salesman |      1005 | 1981-02-22 |   1250 |       500 |     30 |
|  1004 | Jones  | Manager  |      1007 | 1981-04-02 |   2975 |      NULL |     20 |
|  1005 | Martin | Salesman |      1006 | 1981-09-28 |   1250 |      1400 |     30 |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
5 rows in set (0.00 sec)
  
3. Select all information from table department.

  mysql> SELECT * FROM Department;
+--------+------------+----------+
| deptno | deptname   | location |
+--------+------------+----------+
|     10 | Accounting | US       |
|     20 | Research   | US       |
|     30 | Sales      | US       |
|     40 | Marketing  | US       |
|     50 | IT         | US       |
+--------+------------+----------+
5 rows in set (0.00 sec)
  
4.Select all information from table salarygrade.

  mysql> SELECT * FROM SalaryGrade;
+-------+-----------+------------+
| grade | lowsalary | highsalary |
+-------+-----------+------------+
|     1 |       700 |       1200 |
|     2 |      1201 |       1400 |
|     3 |      1401 |       2000 |
|     4 |      2001 |       3000 |
|     5 |      3001 |       9999 |
+-------+-----------+------------+
5 rows in set (0.00 sec)
  
4.Select empno,ename form table employee.

  mysql> SELECT empno, ename FROM Employee;
+-------+--------+
| empno | ename  |
+-------+--------+
|  1001 | Allen  |
|  1002 | Smith  |
|  1003 | Ward   |
|  1004 | Jones  |
|  1005 | Martin |
+-------+--------+
5 rows in set (0.00 sec)
  
5.List all employees having a salary range between 1000 and 2000

  mysql> SELECT * FROM Employee WHERE salary BETWEEN 1000 AND 2000;
+-------+--------+----------+-----------+------------+--------+-----------+--------+
| empno | ename  | JOB      | managerid | hiredate   | salary | commision | deptno |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
|  1001 | Allen  | Salesman |      1005 | 1981-06-01 |   1600 |       300 |     30 |
|  1003 | Ward   | Salesman |      1005 | 1981-02-22 |   1250 |       500 |     30 |
|  1005 | Martin | Salesman |      1006 | 1981-09-28 |   1250 |      1400 |     30 |
+-------+--------+----------+-----------+------------+--------+-----------+--------+
3 rows in set (0.00 sec)
  
6.List dname and department number in department name order.

  mysql> SELECT deptname, deptno FROM Department ORDER BY deptname;
+------------+--------+
| deptname   | deptno |
+------------+--------+
| Accounting |     10 |
| IT         |     50 |
| Marketing  |     40 |
| Research   |     20 |
| Sales      |     30 |
+------------+--------+
5 rows in set (0.00 sec)
  
7.List the employee details in department 10 and 20

  mysql> SELECT * FROM Employee WHERE deptno IN (10, 20);
+-------+-------+---------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB     | managerid | hiredate   | salary | commision | deptno |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
|  1002 | Smith | Clerk   |      1006 | 1987-12-09 |    800 |      NULL |     20 |
|  1004 | Jones | Manager |      1007 | 1981-04-02 |   2975 |      NULL |     20 |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
2 rows in set (0.00 sec)
  
8.List names and jobs of all clerks in dept 20

  mysql> SELECT ename, job FROM Employee WHERE job='Clerk' AND deptno=20;
+-------+-------+
| ename | job   |
+-------+-------+
| Smith | Clerk |
+-------+-------+
1 row in set (0.00 sec)
  
9.Display all employee names which have TH or LL in name

  mysql> SELECT ename FROM Employee WHERE ename LIKE '%TH%' OR ename LIKE '%LL%';
+-------+
| ename |
+-------+
| Allen |
| Smith |
+-------+
2 rows in set (0.00 sec)

10.List name,job,and salary of all employees who have a manager.

   SELECT ename, job, salary FROM Employee WHERE managerid IS NOT NULL;
+--------+----------+--------+
| ename  | job      | salary |
+--------+----------+--------+
| Allen  | Salesman |   1600 |
| Smith  | Clerk    |    800 |
| Ward   | Salesman |   1250 |
| Jones  | Manager  |   2975 |
| Martin | Salesman |   1250 |
+--------+----------+--------+
5 rows in set (0.00 sec)
  
11.Dispaly name and annual remuneration for all employees.

  mysql> SELECT ename, (salary * 12 + IFNULL(commision,0)) AS annual_remuneration FROM Employee;
+--------+---------------------+
| ename  | annual_remuneration |
+--------+---------------------+
| Allen  |               19500 |
| Smith  |                9600 |
| Ward   |               15500 |
| Jones  |               35700 |
| Martin |               16400 |
+--------+---------------------+
5 rows in set (0.00 sec)
  
12.Display all employees hired during 1987.

  mysql> SELECT * FROM Employee WHERE YEAR(hiredate) = 1987;
+-------+-------+-------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB   | managerid | hiredate   | salary | commision | deptno |
+-------+-------+-------+-----------+------------+--------+-----------+--------+
|  1002 | Smith | Clerk |      1006 | 1987-12-09 |    800 |      NULL |     20 |
+-------+-------+-------+-----------+------------+--------+-----------+--------+
1 row in set (0.00 sec)
  
13.Display name,job,annual sal,commission of all sales peoples whose monthly salary greater than commission.The output should be order by salary highest first.

  mysql> SELECT ename, job, (salary*12) AS annual_sal, commision
    -> FROM Employee
    -> WHERE job='Salesman' AND salary > IFNULL(commision, 0)
    -> ORDER BY salary DESC;
+-------+----------+------------+-----------+
| ename | job      | annual_sal | commision |
+-------+----------+------------+-----------+
| Allen | Salesman |      19200 |       300 |
| Ward  | Salesman |      15000 |       500 |
+-------+----------+------------+-----------+
2 rows in set (0.00 sec)
  
14.List the employee name and salary increased by 12.5%.Express has a whole number

  mysql> SELECT ename, ROUND(salary * 1.125) AS increased_salary FROM Employee;
+--------+------------------+
| ename  | increased_salary |
+--------+------------------+
| Allen  |             1800 |
| Smith  |              900 |
| Ward   |             1406 |
| Jones  |             3347 |
| Martin |             1406 |
+--------+------------------+
5 rows in set (0.00 sec)
  
15.Produce the following output

EMPLOYEE AND JOB
SMITH   		 CLERK
ALLEN		SALESMAN

   mysql> SELECT CONCAT(ename, '     ', job) AS "EMPLOYEE AND JOB" FROM Employee WHERE ename IN ('SMITH', 'ALLEN');
+--------------------+
| EMPLOYEE AND JOB   |
+--------------------+
| Allen     Salesman |
| Smith     Clerk    |
+--------------------+
2 rows in set (0.00 sec)

16.Produce the following output 

EMPLOYEE AND JOB
SMITH(Clerk)
ALLEN(Salesman)

  mysql> SELECT CONCAT(ename, '(', job, ')') AS "EMPLOYEE AND JOB" FROM Employee WHERE ename IN ('SMITH', 'ALLEN');
+------------------+
| EMPLOYEE AND JOB |
+------------------+
| Allen(Salesman)  |
| Smith(Clerk)     |
+------------------+
2 rows in set (0.00 sec)

17. Find the minimum, maximum, and average salaries of all employees.

  mysql> SELECT MIN(salary), MAX(salary), AVG(salary) FROM Employee;
+-------------+-------------+-------------+
| MIN(salary) | MAX(salary) | AVG(salary) |
+-------------+-------------+-------------+
|         800 |        2975 |   1575.0000 |
+-------------+-------------+-------------+
  
18. List the minimum and maximum salary for each job.

  mysql> SELECT job, MIN(salary), MAX(salary) FROM Employee GROUP BY job;
+----------+-------------+-------------+
| job      | MIN(salary) | MAX(salary) |
+----------+-------------+-------------+
| Salesman |        1250 |        1600 |
| Clerk    |         800 |         800 |
| Manager  |        2975 |        2975 |
+----------+-------------+-------------+
3 rows in set (0.00 sec)
  
19. Find how many managers are there without listing them.

  mysql> SELECT COUNT(*) FROM Employee WHERE job = 'Manager';
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)
  
20.Find the average salary and average total remuneration for each job.

  mysql> SELECT job, AVG(salary) AS avg_salary,
    -> AVG(salary + IFNULL(commision, 0)) AS avg_total
    -> FROM Employee
    -> GROUP BY job;
+----------+------------+-----------+
| job      | avg_salary | avg_total |
+----------+------------+-----------+
| Salesman |  1366.6667 | 2100.0000 |
| Clerk    |   800.0000 |  800.0000 |
| Manager  |  2975.0000 | 2975.0000 |
+----------+------------+-----------+
3 rows in set (0.00 sec)
  
21. Find the difference between highest and lowest salaries.

  mysql> SELECT MAX(salary) - MIN(salary) AS salary_difference FROM Employee;
+-------------------+
| salary_difference |
+-------------------+
|              2175 |
+-------------------+
1 row in set (0.00 sec)
  
22. Find all departments having more than 2 employees.

  mysql> SELECT deptno,JOB, COUNT(*) as emp_count
    -> FROM Employee
    -> GROUP BY deptno
    -> HAVING COUNT(*) > 2;
+--------+----------+-----------+
| deptno | JOB      | emp_count |
+--------+----------+-----------+
|     30 | Salesman |         3 |
+--------+----------+-----------+
1 row in set (0.00 sec)
  
23. Check whether all employee numbers are unique.

  mysql> SELECT empno, COUNT(*)
    -> FROM Employee
    -> GROUP BY empno
    -> HAVING COUNT(*) > 1;
Empty set (0.00 sec)
