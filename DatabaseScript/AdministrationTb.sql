grant exec on abcd.dbo.u_id to sa  --��¼�û�
USE zhongchouDB

insert into AdministrationTb values('Admin','admin123','0')

select count(0) from AdministrationTb where AdminName=@name  and AdminPassword=@pwd