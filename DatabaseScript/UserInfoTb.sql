grant exec on abcd.dbo.u_id to sa  --登录用户
USE zhongchouDB



------------------------------------------------------------------------------------------------|
																				              --|
--分页储存过程																				  --|
if exists(select * from sysobjects where name='GetPagedOrders') 							  --|
drop proc GetPagedOrders															          --|
go																				              --|
create procedure [dbo].[GetPagedOrders]											              --|
@startIndex int, 																              --|
@endIndex int 																	              --|
AS																				              --|
with SClass as(                   --SClass 是一个临时表							              --|
select row_number() over(order by [Id]) as row,									              --|
[Id],UserName,UserSex,UserEmail,UserPassword,UserHeadPortrait,State,RegistrationTime		  --|
from UserInfoTb)																              --|
select [Id],UserName,UserSex,UserEmail,UserPassword,UserHeadPortrait,State,RegistrationTime	  --|
from SClass																		              --|
where row between @startIndex and @endIndex										              --|
return 0																		              --|
																				              --|
go exec GetPagedOrders 1,8														              --|
																				              --|
--分页储存过程 （数量）															              --|
go																				              --|
create procedure [dbo].[GetOrderNumber]											              --|
AS																				              --|
  select count(*) from UserInfoTb												              --|
RETURN 0																		              --|
																				              --|
------------------------------------------------------------------------------------------------|









insert into UserInfoTb (UserName,UserSex,UserEmail,UserPassword,UserHeadPortrait,State,RegistrationTime) values('迈克尔-逊','女','123456789@qq.com','123','../Content/Images/UserHeadPortrait/NikolaTesla.jpg',0,getdate())
insert into UserInfoTb (UserName,UserSex,UserEmail,UserPassword,UserHeadPortrait,State,RegistrationTime) values('迈克尔','男','123@qq.com','321','',0,getdate())

select Id,UserName,UserEmail,UserHeadPortrait from UserInfoTb where UserEmail='123456789@qq.com'
go

if exists(select * from sysobjects where name='u_id')
drop proc u_id
go
create proc u_id @jia int
--as declare 
as
while(@jia<20)begin
insert into UserInfoTb values('纠缠的量子','男','126789@qq.com','123456','湖北武汉','我就是我','',0,'2019-02-01')
set @jia +=1
end
--调用储存过程
go
exec u_id 1 

select * from UserInfoTb

update UserInfoTb set UserHeadPortrait='../Content/Images/UserHeadPortrait/NikolaTesla.jpg' where UserName='众筹之光'
update UserInfoTb set PersonalizedSignature='你好骚啊' where UserName='众筹之光'

select Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb

select count(0) from UserInfoTb where UserName='钢铁侠'

insert into UserInfoTb (UserName,UserEmail,UserPassword,UserHeadPortrait,RegistrationTime,State) values('我是钢铁侠','123@qq.com','123','../Content/Images/UserHeadPortrait/NikolaTesla.jpg',getdate(),0)


update UserInfoTb set UserEmail='123456789@qq.com' where Id='1001'