
1.Create table EMP(EMPNO int primary key,ename varchar(30),JOB varchar(10),MGR int,hiredate date,sal float,comm float,deptno int);
2.create table dept(deptno int primary key,dname varchar(15),loc varchar(10));
3.create table SALGRADE(grade int primary key,losal int,hsal int);
4.Insert  5 values to each table
5.Select all information from salgrade table
6.select all information from EMP
7.List all employees having a salary range between 1000 and 2000
8.List dname and name order department number in department.
9.List the employee details in department 10 and 20
10.List names and jobs of all clerks in dept 20
11.Display all employee names which have TH or LL in name
12.List name,job,and salary of all employees who have a manager.
13.Dispaly name and annual remuneration for all employees.
14.Display all employees hired during 1987.
15.Display name,job,annual sal,commission of all sales peoples whose monthly salary greater than commission.The output should be order by salary highest first.
16.List the employee name and salary increased by 12.5%.Express has a whole number
17.Produce the following output

EMPLOYEE AND JOB
SMITH   		 CLERK
ALLEN		SALESMAN

18.Produce the following output 

EMPLOYEE AND JOB
SMITH(Clerk)
ALLEN(Salesman)

19.As the sales people in department 30 are not all male produce the output

---------------------------------------------------------------------------------
CREATE TABLE EMP(
    EMPNO INT PRIMARY KEY,
    ename VARCHAR(30),
    JOB VARCHAR(10),
    MGR INT,
    hiredate DATE,
    sal FLOAT,
    comm FLOAT,
    deptno INT
);

CREATE TABLE dept(
    deptno INT PRIMARY KEY,
    dname VARCHAR(15),
    loc VARCHAR(10)
);

CREATE TABLE SALGRADE(
    grade INT PRIMARY KEY,
    losal INT,
    hsal INT
);

INSERT INTO EMP VALUES
(7839, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
(7566, 'ALLEN', 'SALESMAN', 7698, '1981-03-10', 1600, 300, 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-14', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-05-14', 2450, NULL, 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1981-03-05', 3000, NULL, 20);


INSERT INTO dept VALUES
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON'),
(50, 'MARKETING', 'SEATTLE');


INSERT INTO SALGRADE VALUES
(1, 700, 1200),
(2, 1201, 1400),
(3, 1401, 2000),
(4, 2001, 3000),
(5, 3001, 5000);

select * from salgrade;
select * from emp;
SELECT * FROM EMP WHERE sal BETWEEN 1000 AND 2000;
select dname,deptno from dept order by dname;
SELECT * FROM EMP WHERE deptno IN (10, 20);
SELECT ename, job FROM EMP WHERE job = 'CLERK' AND deptno = 20;
SELECT ename FROM EMP WHERE ename LIKE '%TH%' OR ename LIKE '%LL%';
SELECT ename, job, sal FROM EMP WHERE MGR IS NOT NULL;
SELECT ename, sal * 12 AS annual_remuneration FROM EMP;
SELECT ename, hiredate FROM EMP WHERE hiredate BETWEEN '1987-01-01' AND '1987-12-31';
SELECT ename, job, sal * 12 AS annual_sal, comm FROM EMP WHERE job = 'SALESMAN' AND sal > comm ORDER BY sal DESC;
SELECT ename, ROUND(sal * 1.125) AS increased_salary FROM EMP;
SELECT CONCAT(ename, '     ', job) AS "EMPLOYEE AND JOB" FROM EMP WHERE ename IN ('SMITH', 'ALLEN');
SELECT CONCAT(ename, '(', job, ')') AS "EMPLOYEE AND JOB" FROM EMP WHERE ename IN ('SMITH', 'ALLEN');
SELECT ename, job, deptno FROM EMP WHERE deptno = 30;
