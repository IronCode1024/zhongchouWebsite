CREATE DATABASE zhongchouDB
USE GO

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

insert into UserInfoTb values('╬ю╡Ь╣да©вс','123456789@qq.com','123456','',0)

select * from UserInfoTb

CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	UserName NVARCHAR(20) NOT NULL,
	ProjectType NVARCHAR(20) NOT NULL,
	ProjectName NVARCHAR(100) NOT NULL,
	ProjectOverview NVARCHAR(MAX),
	ProjectDetailedPictures NVARCHAR(MAX),
	TargetAmountOfMoney DECIMAL(15,2),
	AlreadyRaisedMoney DECIMAL(15,2),
	ReleaseStatus NVARCHAR(20) NOT NULL,
	ReleaseDate DATETIME NOT NULL,
)

CREATE TABLE ProjectImageTb
(
	ImageID INT PRIMARY KEY NOT NULL,
	ImageUrl NVARCHAR(100) NOT NULL,
	UserID INT NOT NULL,
	ProjectID INT NOT NULL
)



