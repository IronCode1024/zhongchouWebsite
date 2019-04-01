grant exec on abcd.dbo.u_id to sa  --登录用户
USE zhongchouDB


--分页储存过程
go
create procedure [dbo].[GetPagedOrders]
@startIndex int, 
@endIndex int 
AS
with SClass as(                   --SClass 是一个临时表
select row_number() over(order by [Id]) as row,
[Id],UserName,UserEmail,UserPassword,UserHeadPortrait,State
from UserInfoTb)
select [Id],UserName,UserEmail,UserPassword,UserHeadPortrait,State
from SClass
where row between @startIndex and @endIndex
return 0

go exec GetPagedOrders 1,1

--分页储存过程 （数量）
go
create procedure [dbo].[GetOrderNumber]
AS
  select count(*) from UserInfoTb
RETURN 0



select Id,UserName,UserEmail,UserHeadPortrait from UserInfoTb where UserEmail='123456789@qq.com'
go

if exists(select * from sysobjects where name='u_id')
drop proc u_id
go
create proc u_id @jia int
--as declare 
as
while(@jia<20)begin
insert into UserInfoTb values('迈克尔-逊','123456789@qq.com','123456','../Content/Images/UserHeadPortrait/NikolaTesla.jpg',0)
set @jia +=1
end
--调用储存过程
go
exec u_id 1 



update UserInfoTb set UserHeadPortrait='../Content/Images/UserHeadPortrait/NikolaTesla.jpg' where UserName='众筹之光'

select Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb