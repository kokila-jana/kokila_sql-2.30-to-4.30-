create database first_class;
use first_class;
create table info(eid int,Name varchar(25),Age int,Salary decimal(6,2),
Phone bigint,experience int,Address varchar(25),join_date date);
rename table info to emp;
describe emp;
alter table emp add column dob date;
alter table emp drop column Address;
alter table emp drop column dob,drop column experience;
alter table emp modify column Name varchar(30);
alter table emp rename column eid to e_id;

alter table emp modify column salary float;
insert into emp value(741,"Janarthanan",55,50000,9095589221,"1992-12-04");
insert into emp value(852,"Mano",53,45000,9443545852,"1993-12-22"),
(963,"Sasikumar",33,100000,7010752575,"2020-08-08"),
(123,"Priya",29,35000,9786543210,"2019-08-01"),
(456,"Kalai",25,35000,7418529630,"2023-02-14");
select * from emp;

set sql_safe_updates=0;
update emp set salary=40000.3 where name="priya";
delete from emp where name="Kalai";
delete from emp where name="Janarthanan" limit 1;

select * from emp where name="Mano";
select name,salary,join_date from emp;

update emp set salary=salary+3000 where name="Mano";
select* from emp where salary>50000;
select* from emp where salary<50000 and salary>45000;
select* from emp where name like "J%";
select* from emp where name like "_a%";
select* from emp where name like "%an";
select* from emp  order by name;
select* from emp  order by name desc;

select* from emp where salary between 45000 and 50000;

CREATE TABLE emp3 (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);


INSERT INTO emp3 VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp3 VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp3 VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp3 VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp3 VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp3 VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp3 VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp3 VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp3 VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp3 VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp3 VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp3 VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp3 VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp3 VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

select * from emp3;

select * from emp3 where job in("salesman","HR","Trainer");

select sal, count(*) from emp3 group by sal;
use afternoon;
select * from emp;
select dept, sum(salary) from emp group by dept;
select dept,avg(salary) from emp group by dept;
select dept,min(salary) from emp group by dept;
select dept,max(salary) from emp group by dept;

select now();
select date(now());
select time(now());
select date_format(now(),"%Y:%m:%d") as date;
select extract(day from join_date) as join_d from emp;
select extract(month from join_date) as join_d from emp;
select extract(year from join_date) as join_d from emp;

select datediff(curdate(),'2023-04-01') as working_days;
select date_add(curdate(),interval 10 day) as five;
