grant exec on abcd.dbo.u_id to sa  --登录用户

--创建数据库  zhongchouDB
--CREATE DATABASE zhongchouDB
USE zhongchouDB

--管理员表
CREATE TABLE AdministrationTb
(
	ID INT IDENTITY(101,1) NOT NULL,     --管理员ID	主键
	AdminName nvarchar(20) NOT NULL,		--管理员用户名（Admin）	
	AdminPassword nvarchar(20) NOT NULL,	--密码	
	State bit	--在线状态	0为不在线，1为在线
)
--drop table AdministrationTb
select * from AdministrationTb

--用户表
CREATE TABLE UserInfoTb
(
	Id INT IDENTITY(1001,1) PRIMARY KEY NOT NULL, --用户ID
	UserName NVARCHAR(20) NOT NULL,--用户名
	UserEmail NVARCHAR(50) NOT NULL,--密码
	UserPassword NVARCHAR(32) NOT NULL,--邮箱
	UserAddress NVARCHAR(200) NOT NULL,--用户地址
	PersonalizedSignature NVARCHAR(100) NULL,--个性签名
	UserHeadPortrait NVARCHAR(100) NULL,--用户头像路径
	State BIT NOT NULL,--在线状态
	RegistrationTime DATETIME NOT NULL,--用户注册日期
)
--drop table UserInfoTb
select * from UserInfoTb

--用户关联的项目（发起的、支持的、喜欢的）
CREATE TABLE UserRelatedItems
(
	RelatedID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	UserEmail NVARCHAR(50) NOT NULL,--用户邮箱  关联用户表  一个用户可以有多个项目
	ProjectsInitiated NVARCHAR(50) NULL, --发起的项目
	ProjectsSupported NVARCHAR(50) NULL, --支持的项目
	FavoriteProjects NVARCHAR(50) NULL, --喜欢的项目
)
--drop table UserRelatedItems
select * from UserRelatedItems

--项目表
CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) NOT NULL, --编号
	ProjectCover NVARCHAR(500) NOT NULL,	--项目封面
	UserID INT NOT NULL,					--关联用户表
	UserEmail NVARCHAR(50) NOT NULL,		--发起人邮箱
	ProjectType NVARCHAR(20) NOT NULL,		--项目类型
	ProjectName NVARCHAR(100) NOT NULL,		--项目名称
	ProjectTargetDays INT NOT NULL,			--目标众筹天数
	ProjectOverview NVARCHAR(MAX),			--项目概述
	ProjectDetailedPictures NVARCHAR(MAX),	--项目详情（内容）
	TargetAmountOfMoney DECIMAL(15,2),		--目标金额
	AlreadyRaisedMoney DECIMAL(15,2),		--已筹金额
    NumberOfProjectSupport INT NULL,		--项目支持人数
	ProjectAddress NVARCHAR(500) NOT NULL,	--项目发起地址
	ReleaseStatus NVARCHAR(20) NOT NULL,	--发布状态
	ProjectUpdateTime DATETIME,				--项目更新时间
	ReleaseDate DATETIME NOT NULL			--发布日期（发布日的日期）
)											
--drop table ProjectTb
select * from ProjectTb

--项目图片表
CREATE TABLE ProjectImageTb
(
	ImageID INT IDENTITY(101,1) NOT NULL,
	ImageUrl NVARCHAR(100) NOT NULL,
	UserID INT NOT NULL,
	ProjectID INT NOT NULL
)
--drop table ProjectImageTb
select * from ProjectImageTb


--用户评论表
CREATE TABLE UserCommentaryTb
(
	CommentaryID int primary key identity(101,1),
	UserID nvarchar(20),
    ProjectID INT,
    CommentatorID INT,
    Content NVARCHAR(MAX),
    CommentaryDate DATETIME
)

