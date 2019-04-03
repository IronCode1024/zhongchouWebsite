grant exec on abcd.dbo.u_id to sa  --��¼�û�

--�������ݿ�  zhongchouDB
--CREATE DATABASE zhongchouDB
USE zhongchouDB

--����Ա��
CREATE TABLE AdministrationTb
(
	ID INT IDENTITY(101,1) NOT NULL,     --����ԱID	����
	AdminName nvarchar(20) NOT NULL,		--����Ա�û�����Admin��	
	AdminPassword nvarchar(20) NOT NULL,	--����	
	State bit	--����״̬	0Ϊ�����ߣ�1Ϊ����
)
--drop table AdministrationTb
select * from AdministrationTb

--�û���
CREATE TABLE UserInfoTb
(
	Id INT IDENTITY(1001,1) PRIMARY KEY NOT NULL, --�û�ID
	UserName NVARCHAR(50) NOT NULL,--�û���
	UserSex NVARCHAR(20) NULL,
	UserEmail NVARCHAR(50) NOT NULL,--����
	UserPassword NVARCHAR(50) NOT NULL,--����
	UserAddress NVARCHAR(200) NULL,--�û���ַ
	PersonalizedSignature NVARCHAR(500) NULL,--����ǩ��
	UserHeadPortrait NVARCHAR(500) NULL,--�û�ͷ��·��
	State BIT NOT NULL,--����״̬
	RegistrationTime DATETIME NOT NULL,--�û�ע������
)
--drop table UserInfoTb
select * from UserInfoTb

--�û���������Ŀ������ġ�֧�ֵġ�ϲ���ģ�
CREATE TABLE UserRelatedItems
(
	RelatedID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	UserEmail NVARCHAR(50) NOT NULL,--�û�����  �����û���  һ���û������ж����Ŀ  11
	ProjectsInitiated NVARCHAR(50) NULL, --�������ĿProjectID   1  12  3
	ProjectsSupported NVARCHAR(50) NULL, --֧�ֵ���ĿProjectID
	FavoriteProjects NVARCHAR(50) NULL, --ϲ������ĿProjectID
)
--drop table UserRelatedItems
select * from UserRelatedItems

--��Ŀ��
CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) PRIMARY KEY NOT NULL, --���
	ProjectCover NVARCHAR(500) NOT NULL,	--��Ŀ����
	UserID INT NOT NULL,					--�����û���
	UserEmail NVARCHAR(50) NOT NULL,		--����������
	ProjectType NVARCHAR(20) NOT NULL,		--��Ŀ����
	ProjectName NVARCHAR(100) NOT NULL,		--��Ŀ����
	ProjectTargetDays INT NOT NULL,			--Ŀ���ڳ�����
	ProjectOverview NVARCHAR(MAX),			--��Ŀ����
	ProjectDetailedPictures NVARCHAR(MAX),	--��Ŀ���飨���ݣ�
	TargetAmountOfMoney DECIMAL(15,2),		--Ŀ����
	AlreadyRaisedMoney DECIMAL(15,2),		--�ѳ���
    NumberOfProjectSupport INT NULL,		--��Ŀ֧������
	ProjectAddress NVARCHAR(500) NULL,      --��Ŀ�����ַ
	ReleaseStatus NVARCHAR(20) NOT NULL,	--����״̬      (�����С��ѳɹ�����ʧ��)
	ProjectUpdateTime DATETIME,				--��Ŀ����ʱ��
	ReleaseDate DATETIME NOT NULL			--�������ڣ������յ����ڣ�
)											
--drop table ProjectTb
select * from ProjectTb

--��ĿͼƬ��
CREATE TABLE ProjectImageTb
(
	ImageID INT IDENTITY(101,1) NOT NULL,
	ImageUrl NVARCHAR(100) NOT NULL,
	UserID INT NOT NULL,
	ProjectID INT NOT NULL
)
--drop table ProjectImageTb
select * from ProjectImageTb


--�û����۱�
CREATE TABLE UserCommentaryTb
(
	CommentaryID int primary key identity(101,1),
	UserID nvarchar(20),
    ProjectID INT,
    CommentatorID INT,
    Content NVARCHAR(MAX),
    CommentaryDate DATETIME
)

--���б�
CREATE TABLE BankTb
(
	BankID INT IDENTITY(101,1) NOT NULL, --ID
	BankAccount NVARCHAR(200) NOT NULL,  --�����˺�
	BankUserName NVARCHAR(200) NOT NULL, --�����˻���
	BanName NVARCHAR(200) NOT NULL,      --��������
	BankBranch NVARCHAR(200) NOT NULL,   --����֧��
	UserEmail NVARCHAR(200) NOT NULL     --�û�����
)
--drop table BankTb
select * from BankTb
insert into BankTb values('884488123545987142','С�޲�������','�й�����','�й����л���ũ��֧��','123456789@qq.com')
