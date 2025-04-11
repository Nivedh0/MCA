1. Display all employee names and their department names in department name order.

  mysql> SELECT e.ename, d.deptname
    -> FROM Employee e
    -> JOIN Department d ON e.deptno = d.deptno
    -> ORDER BY d.deptname;
+--------+----------+
| ename  | deptname |
+--------+----------+
| Smith  | Research |
| Jones  | Research |
| Allen  | Sales    |
| Ward   | Sales    |
| Martin | Sales    |
+--------+----------+
5 rows in set (0.00 sec)
  
2. Display the name, location, and department name of all employees whose salary is more than 1500.

  mysql> SELECT e.ename, d.location, d.deptname
    -> FROM Employee e
    -> JOIN Department d ON e.deptno = d.deptno
    -> WHERE e.salary > 1500;
+-------+----------+----------+
| ename | location | deptname |
+-------+----------+----------+
| Allen | US       | Sales    |
| Jones | US       | Research |
+-------+----------+----------+
2 rows in set (0.00 sec)
  
3.Produce a list showing employee’s salary grade.

  mysql> SELECT e.ename, e.salary, s.grade
    -> FROM Employee e
    -> JOIN SalaryGrade s ON e.salary BETWEEN s.lowsalary AND s.highsalary;
+--------+--------+-------+
| ename  | salary | grade |
+--------+--------+-------+
| Smith  |    800 |     1 |
| Ward   |   1250 |     2 |
| Martin |   1250 |     2 |
| Allen  |   1600 |     3 |
| Jones  |   2975 |     4 |
+--------+--------+-------+
5 rows in set (0.00 sec)
  
4. List employees in grade 3.

  mysql> SELECT e.*
    -> FROM Employee e
    -> JOIN SalaryGrade s ON e.salary BETWEEN s.lowsalary AND s.highsalary
    -> WHERE s.grade = 3;
+-------+-------+----------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB      | managerid | hiredate   | salary | commision | deptno |
+-------+-------+----------+-----------+------------+--------+-----------+--------+
|  1001 | Allen | Salesman |      1005 | 1981-06-01 |   1600 |       300 |     30 |
+-------+-------+----------+-----------+------------+--------+-----------+--------+
1 row in set (0.00 sec)
  
5. Show all employees in US.

  mysql> SELECT e.*
    -> FROM Employee e
    -> JOIN Department d ON e.deptno = d.deptno
    -> WHERE d.location = 'US';
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
  
6.List employee name, job, salary, grade and department name for all except clerk. Sort on salary descending order..

  mysql> SELECT e.ename, e.job, e.salary, s.grade, d.deptname
    -> FROM Employee e
    -> JOIN Department d ON e.deptno = d.deptno
    -> JOIN SalaryGrade s ON e.salary BETWEEN s.lowsalary AND s.highsalary
    -> WHERE e.job != 'Clerk'
    -> ORDER BY e.salary DESC;
+--------+----------+--------+-------+----------+
| ename  | job      | salary | grade | deptname |
+--------+----------+--------+-------+----------+
| Jones  | Manager  |   2975 |     4 | Research |
| Allen  | Salesman |   1600 |     3 | Sales    |
| Ward   | Salesman |   1250 |     2 | Sales    |
| Martin | Salesman |   1250 |     2 | Sales    |
+--------+----------+--------+-------+----------+
4 rows in set (0.00 sec)
  
7. List the following details for all employees who earn 36000 a year or who are clerk.

  mysql> SELECT ename, job, salary
    -> FROM Employee
    -> WHERE salary * 12 = 36000 OR job = 'Clerk';
+-------+-------+--------+
| ename | job   | salary |
+-------+-------+--------+
| Smith | Clerk |    800 |
+-------+-------+--------+
1 row in set (0.00 sec)
