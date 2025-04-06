create database Febin;
show databases;
use febin;
create table person(
pid int,
pphone integer,
page integer,pname varchar(20)
);
describe person;

alter table person add column email char(20);
alter table person modify column email varchar(50);
alter table person add column areacode char(10);
alter table person drop column areacode;

insert into person values (100,987654321,35,'reyan','r@gmail.com');
insert into person values (200,987654322,40,'joel','j@gmail.com');
select * from person;

create table p2 as select pid,pname from person;
select * from p2;
drop table p2;

create table p2 as  select pid,pname from person;
rename table p2 to person3;
describe person3;

use Febin;

create table employeed(
eid char(3) not null,
efname varchar(25) not null,
elname varchar(25) not null,
age int);
describe employeed;
alter table employeed modify age int not null;
alter table employeed add unique(eid);

insert into employeed values('E01','tina','jose',23);
insert into employeed values('E01','tina','jose',23);
insert into employeed values('E02','tina','jose',23);

alter table employeed add constraint ucperson unique(efname,elname);
select * from employeed;
delete from employeed where eid='E02';
insert into employeed values('E02','tinsa','josy',25);
alter table employeed drop index ucperson;

insert into employeed values('E03','tinsa','null',33);
insert into employeed values('E04','tinsa',null,33);
insert into employeed values('E05','tinsa',' ',33);

alter table employeed add check(age>=20);
insert into employeed values('E06','tinsa','null',16);
delete from employeed;

create table ordertab(
oid integer not null,
empid char(3) not null,
amount float(7,2),
odate date default(current_date()),
primary key(oid),
foreign key(empid) references employeed(eid));
describe ordertab;

drop table ordertab;
insert into ordertab values(11,100,10000);
insert into ordertab (oid,empid,amount) values(11,'E01',10000);
select * from employeed;
insert into ordertab (oid,empid,amount) values(12,'E06',10000);
select * from employeed;
describe ordertab;
