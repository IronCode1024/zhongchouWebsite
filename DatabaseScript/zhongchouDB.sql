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

insert into UserInfoTb values('����������','123456789@qq.com','123456','',0)
update UserInfoTb set UserHeadPortrait='../Content/Images/UserHeadPortrait/NikolaTesla.jpg' where UserName='�ڳ�֮��'

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

insert into ProjectTb values(1001,'123456789@qq.com','����','��ˮ��֮�ǡ� ��ٳǧ/��  ����53Ԫ',88,'��ѧ����','��ѧ�����ǵ�һ������',10000,5000,102,'������','2019-03-01 14:44:14')
insert into ProjectTb values(1002,'2457284169@qq.com','����','��Ĩ�����ľ��˵�ɫ�����/�� ����49Ԫ',22,'��ѧ����','��ѧ�����ǵ�һ������',10000,500,102,'������','2019-02-01 11:36:23')
insert into ProjectTb values(1002,'2457284169@qq.com','����','��֪����˵1-������������̸¼�� -- �й�������NGO�Ĵ�ҵʷ',20,'��ѧ����','��ѧ�����ǵ�һ������',1000,200,102,'������',getdate())
insert into ProjectTb values(1001,'123456789@qq.com','����','���й��Ĵ���ϣ��������ڵĸ�ҥ��',50,'��ѧ����','��ѧ�����ǵ�һ������',45000,6600,102,'������','2019-02-018 12:33:45.607')

insert into ProjectTb values(1001,'123456789@qq.com','����','ץס˼ά���㶨�﷨',88,'��ѧ����','��ѧ�����ǵ�һ������',11000,8000,102,'������','2019-03-01 14:44:14')
insert into ProjectTb values(1002,'2457284169@qq.com','����','[ �ڳ��ƶ����ͬ��] ϣ�� ���� ���ֹ����ۺ����ǣ� �ڶ�����',22,'���ɫ�����˵�������','fvbgdxzgrghfdg',10000,500,1321,'������','2019-02-01 11:36:23')
insert into ProjectTb values(1002,'2457284169@qq.com','����','���ڳ��ƶǣ��¤�ϡ��������������ػ��� �͸����˵������Ʒ',20,'����������̫��','��ѹ��',1000,200,422,'������',getdate())
insert into ProjectTb values(1001,'123456789@qq.com','����','���Ѱ�ӡ�ͨ������ʶ����������ʧ�ĺ������ջؼ�',20,'��������ͭ��','�и���',61000,42000,101,'������','2019-02-018 12:33:45.607')

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

select UserName from UserInfoTb where UserName='�ڳ�֮��'







create table AdministrationTb
(
	ID INT IDENTITY(101,1) NOT NULL,     --����ԱID	����
	AdminName nvarchar(20) NOT NULL,		--����Ա�û�����Admin��	
	AdminPassword nvarchar(20) NOT NULL,	--����	
	State bit	--����״̬	0Ϊ�����ߣ�1Ϊ����
)
--drop table AdministrationTb
select * from AdministrationTb
insert into AdministrationTb values('Admin','admin123','0')

select count(0) from AdministrationTb where AdminName=@name  and AdminPassword=@pwd