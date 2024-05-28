select ename from emp where ename like '%a%' union select dname from dept;

select max(e.salary),dname from emp e join dept d on e.deptid=d.id group by d.dname;

select * from emp join dept on emp.deptid=dept.id where salary in (select max(e.salary) from emp e join dept d on e.deptid=d.id group by d.dname) order by salary;

select max(e.salary) as salarytop,dname,d.id from emp e join dept d on e.deptid=d.id group by d.dname,d.id order by salarytop;

select max(e.salary) as salarytop,min(e.salary) as salarymin,count(e.eid) as c, dname,d.id from emp e join dept d on e.deptid=d.id group by d.dname,d.id having count(e.eid)>1 order by salarytop;

select * from emp where not exists (select * from emp where eid = 10);

select * from emp e where exists (select 1 from dept where e.deptid = dept.id);

select * from emp e where e.salary > any (select salary from emp where salary between 30000 and 45000);

select * from emp e where e.salary > all	 (select salary from emp where salary between 30000 and 45000);