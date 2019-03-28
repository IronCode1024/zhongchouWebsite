CREATE DATABASE zhongchouDB
USE zhongchouDB

CREATE TABLE UserInfoTb
(
	Id INT IDENTITY(1001,1) PRIMARY KEY NOT NULL,
	UserName NVARCHAR(20) NOT NULL,
	UserEmail NVARCHAR(50) NOT NULL,
	UserPassword NVARCHAR(32) NOT NULL,
	UserHeadPortrait NVARCHAR(100) NULL,
	State BIT NOT NULL
)
--drop table UserInfoTb

select Id,UserName,UserEmail,UserHeadPortrait from UserInfoTb where UserEmail='123456789@qq.com'

insert into UserInfoTb values('纠缠的量子','123456789@qq.com','123456','',0)
update UserInfoTb set UserHeadPortrait='../Content/Images/UserHeadPortrait/NikolaTesla.jpg' where UserName='众筹之光'

select Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb

CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) NOT NULL,
	UserID INT NOT NULL,
	UserEmail NVARCHAR(50) NOT NULL,
	ProjectType NVARCHAR(20) NOT NULL,
	ProjectName NVARCHAR(100) NOT NULL,
	ProjectTargetDays INT NOT NULL,
	ProjectOverview NVARCHAR(MAX),
	ProjectDetailedPictures NVARCHAR(MAX),
	TargetAmountOfMoney DECIMAL(15,2),
	AlreadyRaisedMoney DECIMAL(15,2),	
    NumberOfProjectSupport INT NULL,
	ReleaseStatus NVARCHAR(20) NOT NULL,
	ReleaseDate DATETIME NOT NULL,
)
--drop table ProjectTb
CREATE TABLE ProjectImageTb
(
	ImageID INT IDENTITY(101,1) NOT NULL,
	ImageUrl NVARCHAR(100) NOT NULL,
	UserID INT NOT NULL,
	ProjectID INT NOT NULL
)
--drop table ProjectImageTb

select * from ProjectTb
select ProjectID,UserID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,ReleaseStatus,ReleaseDate from ProjectTb where UserID='1001' or UserID=1002

select ImageID,ImageUrl,Pi.UserID,Pt.UserID,Pi.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,NumberOfProjectSupport,ReleaseStatus,ReleaseDate 
from ProjectImageTb Pi,ProjectTb Pt where Pt.ProjectID=Pi.ProjectID and Pt.UserID=Pi.UserID
select * from ProjectTb
union all
select * from ProjectImageTb

insert into ProjectTb values(1001,'123456789@qq.com','出版','《水灯之城》 梁俪千/著  单价53元',88,'科学技术','科学技术是第一生产力',10000,5000,102,'发布中','2019-03-01 14:44:14')
insert into ProjectTb values(1002,'2457284169@qq.com','出版','《抹不掉的军人底色》杨福江/著 单价49元',22,'科学技术','科学技术是第一生产力',10000,500,102,'发布中','2019-02-01 11:36:23')
insert into ProjectTb values(1002,'2457284169@qq.com','出版','《知行者说1-公益新生代访谈录》 -- 中国公益与NGO的创业史',20,'科学技术','科学技术是第一生产力',1000,200,102,'发布中',getdate())
insert into ProjectTb values(1001,'123456789@qq.com','音乐','在中国的大地上，唱响民众的歌谣。',50,'科学技术','科学技术是第一生产力',45000,6600,102,'发布中','2019-02-018 12:33:45.607')

insert into ProjectTb values(1001,'123456789@qq.com','出版','抓住思维，搞定语法',88,'科学技术','科学技术是第一生产力',11000,8000,102,'发布中','2019-03-01 14:44:14')
insert into ProjectTb values(1002,'2457284169@qq.com','出版','[ 众筹扶贫你我同行] 希望 梦想 纯手工蜂蜜核桃糖（ 第二季）',22,'肉粉色更诱人的他个人','fvbgdxzgrghfdg',10000,500,1321,'发布中','2019-02-01 11:36:23')
insert into ProjectTb values(1002,'2457284169@qq.com','出版','【众筹扶贫牵手陇南】中秋礼遇—文县花椒 送给亲人的最佳礼品',20,'是曾道人人太少','热压伤',1000,200,422,'发布中',getdate())
insert into ProjectTb values(1001,'123456789@qq.com','音乐','【睿介寻子】通过人脸识别技术帮助走失的孩子早日回家',20,'是曾任氏铜鱼','托付给',61000,42000,101,'发布中','2019-02-018 12:33:45.607')

select * from ProjectImageTb
select ImageID,ImageUrl,UserID,ProjectID from ProjectImageTb
insert into ProjectImageTb values('../Content/Images/IndexImg/1.jpg',1001,101),
('../Content/Images/IndexImg/2.jpg',1002,102),
('../Content/Images/IndexImg/3.jpg',1002,103),
('../Content/Images/IndexImg/4.jpg',1001,104),
('../Content/Images/IndexImg/5.jpg',1001,105),
('../Content/Images/IndexImg/6.jpg',1001,106),
('../Content/Images/IndexImg/7.jpg',1001,107),
('../Content/Images/IndexImg/8.jpg',1001,108),
('../Content/Images/IndexImg/9.jpg',1001,109),
('../Content/Images/IndexImg/10.jpg',1001,10),
('../Content/Images/IndexImg/11.jpg',1001,101),
('../Content/Images/IndexImg/12.jpg',1001,101),
('../Content/Images/IndexImg/13.jpg',1001,101),
('../Content/Images/IndexImg/14.jpg',1001,101),
('../Content/Images/IndexImg/15.jpg',1001,101),
('../Content/Images/IndexImg/16.jpg',1001,101),
('../Content/Images/IndexImg/17.jpg',1001,101),
('../Content/Images/IndexImg/18.jpg',1001,101),
('../Content/Images/IndexImg/19.jpg',1001,101),
('../Content/Images/IndexImg/20.jpg',1001,101)

select UserName from UserInfoTb where UserName='众筹之光'







create table AdministrationTb
(
	ID INT IDENTITY(101,1) NOT NULL,     --管理员ID	主键
	AdminName nvarchar(20) NOT NULL,		--管理员用户名（Admin）	
	AdminPassword nvarchar(20) NOT NULL,	--密码	
	State bit	--在线状态	0为不在线，1为在线
)
--drop table AdministrationTb
select * from AdministrationTb
insert into AdministrationTb values('Admin','admin123','0')

select count(0) from AdministrationTb where AdminName=@name  and AdminPassword=@pwd