exec emplist;

--passing parameters
alter procedure emplist(@min_salary as int)
as 
begin 
	select
		eid,ename,salary
			 from 
				emp
				where salary>@min_salary
					order by salary
end;

exec emplist 35000;

--optional parameters
alter procedure emplist(@min_salary as int=0)
as 
begin 
	select
		eid,ename,salary
			 from 
				emp
				where salary>@min_salary
					order by salary
end;

alter procedure countemp(@emp_count int output)
as begin 
		select * from emp;

		set @emp_count = @@ROWCOUNT;
			end;


declare @emps int;
exec countemp @emp_count=@emps output;
select @emps as 'total count';


begin 
	declare @empl table(id int);
	insert into @empl select eid from emp;

	if @@ROWCOUNT>2
		BEGIN	Print 'Greater than 2'
		END
	else if @@ROWCOUNT	= 2
		BEGIN	Print 'Equal than 2'
		END
	else 
		begin Print 'less than 2'
	end
END;

DECLARE @counter INT = 1;

WHILE @counter <= 5
BEGIN
    PRINT @counter;
    SET @counter = @counter + 1;
END


begin
declare @counter int = 0;
declare @mycount table (counter int);
while @counter<=5
begin 
insert into @mycount select @counter
set @counter=@counter+1
end
select * from @mycount
end;


begin
declare @counter int = 0;
declare @mycount table (counter int);
while @counter<=5
begin 
if @counter=4
begin
break;
end
insert into @mycount select @counter
set @counter=@counter+1
end
select * from @mycount
end;


begin
	declare @counter int = 0;
	declare @mycount table (counter int);
	while @counter<5
		begin 
		set @counter=@counter+1
			if @counter=2
				begin
				print 'he'
				continue
				print 'hi'
				end
			insert into @mycount select @counter
		end
	select * from @mycount
end;