select * from emp order by salary desc offset 0 row fetch next 2 rows only;

select top 3 * from emp order by salary desc offset 0 row;