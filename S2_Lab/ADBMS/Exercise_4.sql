1.To display employees who earn morethan the lowest salary in department 30.

  mysql> SELECT * FROM Employee
    -> WHERE salary > (
    ->     SELECT MIN(salary) FROM Employee WHERE deptno = 30
    -> );
+-------+-------+----------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB      | managerid | hiredate   | salary | commision | deptno |
+-------+-------+----------+-----------+------------+--------+-----------+--------+
|  1001 | Allen | Salesman |      1005 | 1981-06-01 |   1600 |       300 |     30 |
|  1004 | Jones | Manager  |      1007 | 1981-04-02 |   2975 |      NULL |     20 |
+-------+-------+----------+-----------+------------+--------+-----------+--------+
2 rows in set (0.00 sec)
  
2.Find the employees who earn morethan every employees in department 30.

  mysql> SELECT * FROM Employee
    -> WHERE salary > ALL (
    ->     SELECT salary FROM Employee WHERE deptno = 30
    -> );
+-------+-------+---------+-----------+------------+--------+-----------+--------+
| empno | ename | JOB     | managerid | hiredate   | salary | commision | deptno |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
|  1004 | Jones | Manager |      1007 | 1981-04-02 |   2975 |      NULL |     20 |
+-------+-------+---------+-----------+------------+--------+-----------+--------+
1 row in set (0.00 sec)
  
3.To find the job with the highest average salary.

  mysql> SELECT job
    -> FROM Employee
    -> GROUP BY job
    -> ORDER BY AVG(salary) DESC
    -> LIMIT 1;
+---------+
| job     |
+---------+
| Manager |
+---------+
1 row in set (0.00 sec)
  
4.Find the departments not having any employees

  mysql> SELECT * FROM Department
    -> WHERE deptno NOT IN (SELECT DISTINCT deptno FROM Employee);
+--------+------------+----------+
| deptno | deptname   | location |
+--------+------------+----------+
|     10 | Accounting | US       |
|     40 | Marketing  | US       |
|     50 | IT         | US       |
+--------+------------+----------+
3 rows in set (0.00 sec)
  
5.Display the name and salary of the top three earners in the company

  mysql> SELECT ename, salary
    -> FROM Employee
    -> ORDER BY salary DESC
    -> LIMIT 3;
+--------+--------+
| ename  | salary |
+--------+--------+
| Jones  |   2975 |
| Allen  |   1600 |
| Martin |   1250 |
+--------+--------+
3 rows in set (0.00 sec)

