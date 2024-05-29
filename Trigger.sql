drop table logger;

create table logger (id int primary key, eid int, dname varchar(10),[date&time] datetime, Check('operation'='INS' or 'operation'='DEL'))

alter Trigger DMLTrigger
on emp after Insert, Delete, Update
as begin set nocount on;
insert into logger select i.eid,d.dname,GETDATE(),'INS' from dept d join inserted i on i.deptid=d.id union all select l.eid,t.dname,GETDATE(),'DEL' from dept t join deleted l on l.deptid=t.id
end;

insert into emp values (10,'Shri',50000,'Pune',3,Null)