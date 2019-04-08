grant exec on abcd.dbo.u_id to sa  --��¼�û�
USE zhongchouDB

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
--��ҳ�������	����Աҳ��																																					    --|
--drop procedure GetProjectPagedOrders																																	--|
go																																										--|
create procedure [dbo].[GetProjectPagedOrders]																															--|
@startIndex int, 																																						--|
@endIndex int 																																							--|
AS																																										--|
with SProject as(                   --SProject ��һ����ʱ��																											    --|
select row_number() over(order by [ProjectID]) as row,																													--|
[ProjectID],ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,																	--|
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate						--|
from ProjectTb)																																							--|
select [ProjectID],ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,																--|
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate						--|
from SProject																																							--|
where row between @startIndex and @endIndex																																--|
return 0																																								--|
																																										--|
go exec GetProjectPagedOrders 1,8																																		--|
																																										--|
--��ҳ������� ��������																																				    --|
go																																										--|
create procedure [dbo].[GetProjectOrderNumber]																															--|
AS																																										--|
  select count(*) from UserInfoTb																																		--|
RETURN 0																																								--|
																																										--|
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
--��ҳ�������   �����Ŀҳ��																																				    --|
--drop procedure GetProjectPagedOrders																																	--|
go																																										--|
create procedure [dbo].[GetClassificationProjectPagedOrders]																															--|
@startIndex int, 																																						--|
@endIndex int 																																							--|
AS																																										--|
with SProject as(                   --SProject ��һ����ʱ��																											    --|
select row_number() over(order by [ProjectID]) as row,																													--|
[ProjectID],ImageID,ImageUrl,Pt.UserID,Pis.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,
TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pis,ProjectTb Pt where Pt.ProjectID=Pis.ProjectID and Pt.UserID=Pis.UserID)		
																																					--|
select [ProjectID],ImageID,ImageUrl,UserID,UserID,ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,
TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 						--|
from SProject																																							--|
where row between @startIndex and @endIndex																																--|
return 0																																								--|
																																										--|
go exec GetProjectPagedOrders 1,8																																		--|
																																										--|
--��ҳ������� ��������																																				    --|
go																																										--|
create procedure [dbo].[GetClassificationProjectOrderNumber]																															--|
AS																																										--|
  select count(*) from UserInfoTb																																		--|
RETURN 0																																								--|
																																										--|
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|



update ProjectTb set ProjectCover='../Content/Images/ProjectImages/ProjectCoverImg/1.jpg' where ProjectID='105'

select * from ProjectTb
select ProjectID,ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate
from ProjectTb where UserID='1001' or UserID=1002

select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID
select * from ProjectTb where UserEmail='123456789@qq.com'
union all
select * from ProjectImageTb

insert into ProjectTb values('',1001,'123456789@qq.com','����','��ˮ��֮�ǡ� ��ٳǧ/��  ����53Ԫ',88,'��ѧ����','��ѧ�����ǵ�һ������',10000,5000,102,'�����人','������',getdate(),'2019-03-01 14:44:14')
insert into ProjectTb values('',1004,'2457284169@qq.com','����','��Ĩ�����ľ��˵�ɫ�����/�� ����49Ԫ',22,'��ѧ����','��ѧ�����ǵ�һ������',10000,500,102,'�й�����','������',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1005,'2457284169@qq.com','����','��֪����˵1-������������̸¼�� -- �й�������NGO�Ĵ�ҵʷ',20,'��ѧ����','��ѧ�����ǵ�һ������',1000,200,102,'�����人','������',getdate(),getdate())
insert into ProjectTb values('',1004,'123456789@qq.com','����','���й��Ĵ���ϣ��������ڵĸ�ҥ��',50,'��ѧ����','��ѧ�����ǵ�һ������',45000,6600,102,'�㶫����','������',getdate(),'2019-02-018 12:33:45.607')

insert into ProjectTb values('',1006,'123456789@qq.com','����','ץס˼ά���㶨�﷨',88,'��ѧ����','��ѧ�����ǵ�һ������',11000,8000,102,'�㽭����','������',getdate(),'2019-03-01 14:44:14')
insert into ProjectTb values('',1002,'2457284169@qq.com','����','[ �ڳ��ƶ����ͬ��] ϣ�� ���� ���ֹ����ۺ����ǣ� �ڶ�����',22,'���ɫ�����˵�������','fvbgdxzgrghfdg',10000,500,1321,'�����人','������',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1007,'2457284169@qq.com','����','���ڳ��ƶǣ��¤�ϡ��������������ػ��� �͸����˵������Ʒ',20,'����������̫��','��ѹ��',1000,200,422,'�����人','������',getdate(),getdate())
insert into ProjectTb values('',1003,'123456789@qq.com','����','���Ѱ�ӡ�ͨ������ʶ����������ʧ�ĺ������ջؼ�',20,'��������ͭ��','�и���',61000,42000,101,'�����Ƹ�','������',getdate(),'2019-02-018 12:33:45.607')




select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pi.UserID=Pt.UserID


update ProjectTb set ProjectType='ũҵ', ProjectName='����ũҵ��ѧ',ProjectTargetDays='12',TargetAmountOfMoney='1200',ProjectOverview='50'
                                  ,ProjectDetailedPictures='15' where ProjectID='113'



select pt.ProjectID,pt.ProjectName,pt.ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))as sum,pt.TargetAmountOfMoney,pt.ReleaseDate,pt.ReleaseStatus 
from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit
 where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='123456789@qq.com' and pt.ProjectID=u.ProjectsSupported

 update ProjectTb set AlreadyRaisedMoney='5000' where ProjectID='109'






insert into ProjectTb values('',1001,'123456789@qq.com','����','��Ĩ�����ľ��˵�ɫ�����/�� ����49Ԫ',22,'��ѧ����','��ѧ�����ǵ�һ������',10000,500,200,'�й�����','������',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1001,'123456789@qq.com','����','��֪����˵1-������������̸¼�� -- �й�������NGO�Ĵ�ҵʷ',20,'��ѧ����','��ѧ�����ǵ�һ������',1000,200,85,'�����人','������',getdate(),getdate())
insert into ProjectTb values('',1001,'123456789@qq.com','����','���й��Ĵ���ϣ��������ڵĸ�ҥ��',50,'��ѧ����','��ѧ�����ǵ�һ������',45000,6600,102,'�㶫����','������',getdate(),'2019-02-018 12:33:45.607')

insert into ProjectTb values('',1001,'123456789@qq.com','����','ץס˼ά���㶨�﷨',88,'��ѧ����','��ѧ�����ǵ�һ������',11000,8000,150,'�㽭����','������',getdate(),'2019-03-01 14:44:14')
insert into ProjectTb values('',1001,'123456789@qq.com','����','[ �ڳ��ƶ����ͬ��] ϣ�� ���� ���ֹ����ۺ����ǣ� �ڶ�����',22,'���ɫ�����˵�������','fvbgdxzgrghfdg',10000,500,1321,'�����人','������',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1001,'123456789@qq.com','����','���ڳ��ƶǣ��¤�ϡ��������������ػ��� �͸����˵������Ʒ',10,'����������̫��','��ѹ��',1000,200,422,'�����人','������',getdate(),getdate())
insert into ProjectTb values('',1001,'123456789@qq.com','����','���Ѱ�ӡ�ͨ������ʶ����������ʧ�ĺ������ջؼ�',20,'��������ͭ��','�и���',61000,42000,101,'�����Ƹ�','������',getdate(),'2019-02-018 12:33:45.607')




select u.UserEmail,ui.UserEmail,pt.ProjectID,pt.UserEmail,pt.ProjectName,pt.ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,pt.TargetAmountOfMoney,pt.ReleaseDate,pt.ReleaseStatus 
from ProjectTb pt,UserInfoTb ui,UserRelatedItems u,ProjectImageTb pit
 where pt.UserID=ui.Id and pt.ProjectID=pit.ProjectID and u.UserEmail=ui.UserEmail and pt.UserEmail='123456789@qq.com' and pt.ProjectID=u.ProjectsInitiated

 select distinct ProjectType from ProjectTb
 update ProjectTb set ProjectType='�Ƽ�' where ProjectID='107'

 select top 20 ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID


 
select * from ProjectTb

select top 20 ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID



select ImageUrl,ProjectOverview
from ProjectImageTb img,UserInfoTb inf,ProjectTb pro
where inf.Id=img.UserID and img.ProjectID=pro.ProjectID and img.UserID=1001 and img.ProjectID=101

select ProjectOverview
from UserInfoTb inf,ProjectTb pro
where inf.UserEmail=pro.UserEmail and pro.ProjectID='105'


select UserName,UserAddress,pt.UserEmail from UserInfoTb uit,ProjectTb pt where uit.Id=pt.UserID and pt.ProjectID='110'

select TargetAmountOfMoney,NumberOfProjectSupport,ReleaseStatus  from ProjectTb where ProjectID='110'

update ProjectTb set AlreadyRaisedMoney=AlreadyRaisedMoney+'100',NumberOfProjectSupport=NumberOfProjectSupport+1 where ProjectID='105'
