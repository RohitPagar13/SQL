update emp set deptid=NULL where eid=8;

select * from emp e right join dept d on e.deptid=d.id

select * from emp e left join dept d on e.deptid=d.id

select * from emp e join dept d on e.deptid=d.id

select * from emp e join dept d on e.deptid=d.id

select * from emp e inner join dept d on e.deptid=d.id

select * from emp e full join dept d on e.deptid=d.id

select * from emp e full outer join dept d on e.deptid=d.id

select * from emp e cross join dept d

select * from dept d cross join emp e;

create table companies (cid int,cname varchar (20),homebranch varchar(20))

insert into companies values (1,'ContractPod','US'),(2,'BridgeLabz','Mumbai')

alter table emp add cname varchar(20);

EXEC sp_rename 'emp.cname',  'cid', 'COLUMN';

alter table emp alter column cid int

update emp set cid = 1 where eid in (1,3,4,7,8)

update emp set cid =2 where eid in (2,5,6)

insert into companies values (3,'TCS', 'Pune');

select * from emp e left join dept d on e.deptid=d.id left join companies c on e.cid=c.cid