use febin;
create table dept(
deptno integer,
dname varchar (14),
loc varchar (13),
constraint pk_dept primary key (deptno)
);
insert into dept values (10,'Accounting','New York');
insert into dept values (20,'resaerch','Dallas');
insert into dept values (30,'sales','Chihago');
insert into dept values (40,'operations','Boston');


create table emp(
empno integer(4),
ename varchar(10),
job varchar(9),
mgr integer(7),
hiredate date,
sal float(10,5),
comm float(7,3),
deptno integer(4),
primary key(empno),
foreign key(deptno) references dept(deptno)
);
describe emp;
drop table emp;

insert into emp
values(
 7839, 'KING', 'PRESIDENT', null,
 '1981-11-17',
 5000, null, 10
);

insert into emp
values(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, null, 30 );
select * from emp;

insert into emp
values(  7782, 'CLARK', 'MANAGER', 7839,
 '1981-6-9', 2450, null, 10);
insert into emp values(
 7566, 'JONES', 'MANAGER', 7839,
 '1981-4-2', 2975, null, 20);
insert into emp values(
 7788, 'SCOTT', 'ANALYST', 7566,
 '1981-12-9', 3000, null, 20);
insert into emp values(
 7902, 'FORD', 'ANALYST', 7566,
'1981-12-3', 3000, null, 20 );
insert into emp values(
 7369, 'SMITH', 'CLERK', 7902,'1980-12-17', 800, null, 20);
insert into emp values( 7499, 'ALLEN', 'SALESMAN', 7698,'1981-2-20', 1600, 300, 30);
insert into emp values( 7521, 'WARD', 'SALESMAN', 7698,'1981-2-22', 1250, 500, 30);
insert into emp values( 7654, 'MARTIN', 'SALESMAN', 7698,'1981-9-28', 1250, 1400, 30);
insert into emp values( 7844, 'TURNER', 'SALESMAN', 7698,'1981-9-8', 1500, 0, 30);
insert into emp values( 7876, 'ADAMS', 'CLERK', 7788,'1983-1-2',  1100, null, 20);
insert into emp values( 7900, 'JAMES', 'CLERK', 7698,'1981-12-3', 950, null, 30);
insert into emp values(  7934, 'MILLER', 'CLERK', 7782, '1982-1-23', 1300, null, 10);

describe emp;
select * from emp;



