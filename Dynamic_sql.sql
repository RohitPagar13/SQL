create or alter procedure topemp
	@nos int,
	@byColumn nvarchar(10),
	@mytable nvarchar(10),
	@counter int output
as
	begin
	declare @sql nvarchar(max)
	declare @toprows as nvarchar(10)
	set @toprows = cast(@nos as nvarchar(10))
		set @sql= 'select top ' + @toprows + ' * from '+@mytable+' order by '+ @byColumn;

	exec sp_executesql @sql;
	set @counter=@@ROWCOUNT
	end;

declare @myrowcount int
exec topemp 5,'salary','emp', @counter = @myrowcount output;
select @myrowcount as 'total rows';