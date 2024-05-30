with myCTE as (select * from emp) select * from myCTE;

with odd_cte(id,n) as (select 1,1 union all select id+1,n+2 from odd_cte where id<10) select * from odd_cte;