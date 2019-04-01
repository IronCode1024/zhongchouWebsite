grant exec on abcd.dbo.u_id to sa  --登录用户
USE zhongchouDB

--分页储存过程
--drop procedure GetProjectPagedOrders
go
create procedure [dbo].[GetProjectPagedOrders]
@startIndex int, 
@endIndex int 
AS
with SProject as(                   --SProject 是一个临时表
select row_number() over(order by [ProjectID]) as row,
[ProjectID],ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate
from ProjectTb)
select [ProjectID],ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate
from SProject
where row between @startIndex and @endIndex
return 0

go exec GetProjectPagedOrders 1,3

--分页储存过程 （数量）
go
create procedure [dbo].[GetProjectOrderNumber]
AS
  select count(*) from UserInfoTb
RETURN 0


select top 10 * from ProjectTb
select ProjectID,ProjectCover,UserID,UserEmail,ProjectType,ProjectName,ProjectTargetDays,ProjectOverview,
ProjectDetailedPictures,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ProjectAddress,ReleaseStatus,ProjectUpdateTime,ReleaseDate
from ProjectTb where UserID='1001' or UserID=1002

select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID
select * from ProjectTb
union all
select * from ProjectImageTb

insert into ProjectTb values('',1001,'123456789@qq.com','出版','《水灯之城》 梁俪千/著  单价53元',88,'科学技术','科学技术是第一生产力',10000,5000,102,'湖北武汉','发布中',getdate(),'2019-03-01 14:44:14')
insert into ProjectTb values('',1002,'2457284169@qq.com','出版','《抹不掉的军人底色》杨福江/著 单价49元',22,'科学技术','科学技术是第一生产力',10000,500,102,'中国北京','发布中',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1002,'2457284169@qq.com','出版','《知行者说1-公益新生代访谈录》 -- 中国公益与NGO的创业史',20,'科学技术','科学技术是第一生产力',1000,200,102,'湖北武汉','发布中',getdate(),getdate())
insert into ProjectTb values('',1001,'123456789@qq.com','音乐','在中国的大地上，唱响民众的歌谣。',50,'科学技术','科学技术是第一生产力',45000,6600,102,'广东广州','发布中',getdate(),'2019-02-018 12:33:45.607')

insert into ProjectTb values('',1001,'123456789@qq.com','出版','抓住思维，搞定语法',88,'科学技术','科学技术是第一生产力',11000,8000,102,'浙江杭州','发布中',getdate(),'2019-03-01 14:44:14')
insert into ProjectTb values('',1002,'2457284169@qq.com','出版','[ 众筹扶贫你我同行] 希望 梦想 纯手工蜂蜜核桃糖（ 第二季）',22,'肉粉色更诱人的他个人','fvbgdxzgrghfdg',10000,500,1321,'湖北武汉','发布中',getdate(),'2019-02-01 11:36:23')
insert into ProjectTb values('',1002,'2457284169@qq.com','出版','【众筹扶贫牵手陇南】中秋礼遇—文县花椒 送给亲人的最佳礼品',20,'是曾道人人太少','热压伤',1000,200,422,'湖北武汉','发布中',getdate(),getdate())
insert into ProjectTb values('',1001,'123456789@qq.com','音乐','【睿介寻子】通过人脸识别技术帮助走失的孩子早日回家',20,'是曾任氏铜鱼','托付给',61000,42000,101,'湖北黄冈','发布中',getdate(),'2019-02-018 12:33:45.607')




select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID
