create procedure emplist
as 
begin 
	select
		eid,ename,salary
			 from 
				emp
					order by salary
end;

execute emplist;