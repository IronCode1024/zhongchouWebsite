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

insert into UserInfoTb values('纠缠的量子','123456789@qq.com','123456','',0)

select * from UserInfoTb

CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	UserName NVARCHAR(20) NOT NULL,
	ProjectType NVARCHAR(20) NOT NULL,
	ProjectName NVARCHAR(100) NOT NULL,
	ProjectOverview NVARCHAR(MAX),
	ProjectDetailedPictures NVARCHAR(MAX),
	ProjectTargetDays INT NOT NULL,
	TargetAmountOfMoney DECIMAL(15,2),
	AlreadyRaisedMoney DECIMAL(15,2),
	ReleaseStatus NVARCHAR(20) NOT NULL,
	ReleaseDate DATETIME NOT NULL,
)
--drop table ProjectTb
CREATE TABLE ProjectImageTb
(
	ImageID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	ImageUrl NVARCHAR(100) NOT NULL,
	UserID INT NOT NULL,
	ProjectID INT NOT NULL
)
--drop table ProjectImageTb

select * from ProjectTb
select UserName,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,ReleaseStatus,ReleaseDate from ProjectTb

select ImageID,ImageUrl,UserID,UserName,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,ReleaseStatus,ReleaseDate from ProjectTb,ProjectImageTb

select ImageID,ImageUrl,UserID,UserName,Pt.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt

insert into ProjectTb values('纠缠的量子','suoyou','纠缠的量子01','科学技术','科学技术是第一生产力',88,10000,5000,'发布中',getDate())

select * from ProjectImageTb
select ImageID,ImageUrl,UserID,ProjectID from ProjectImageTb
insert into ProjectImageTb values('../Content/Images/IndexImg/1.jpg',1001,101),
('../Content/Images/IndexImg/2.jpg',1001,101),
('../Content/Images/IndexImg/3.jpg',1001,101),
('../Content/Images/IndexImg/4.jpg',1001,101),
('../Content/Images/IndexImg/5.jpg',1001,101),
('../Content/Images/IndexImg/6.jpg',1001,101),
('../Content/Images/IndexImg/7.jpg',1001,101),
('../Content/Images/IndexImg/8.jpg',1001,101),
('../Content/Images/IndexImg/9.jpg',1001,101),
('../Content/Images/IndexImg/10.jpg',1001,101),
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



