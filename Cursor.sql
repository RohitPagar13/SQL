declare mycursor Cursor
for select eid,ename,salary from emp;

open mycursor

declare 
	@empid int ,@ename varchar(10), @salary bigint
	fetch next from mycursor into @empid,@ename,@salary
while @@FETCH_STATUS=0
begin
	print cast(@empid as varchar(10))+''+@ename+''+cast(@salary as varchar(10))
	fetch next from mycursor into @empid,@ename,@salary
end;

close mycursor;