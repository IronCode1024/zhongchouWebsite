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
	UserName NVARCHAR(20) NOT NULL,--�û���
	UserEmail NVARCHAR(50) NOT NULL,--����
	UserPassword NVARCHAR(32) NOT NULL,--����
	UserAddress NVARCHAR(200) NOT NULL,--�û���ַ
	PersonalizedSignature NVARCHAR(100) NULL,--����ǩ��
	UserHeadPortrait NVARCHAR(100) NULL,--�û�ͷ��·��
	State BIT NOT NULL,--����״̬
	RegistrationTime DATETIME NOT NULL,--�û�ע������
)
--drop table UserInfoTb
select * from UserInfoTb

--�û���������Ŀ������ġ�֧�ֵġ�ϲ���ģ�
CREATE TABLE UserRelatedItems
(
	RelatedID INT IDENTITY(101,1) PRIMARY KEY NOT NULL,
	UserEmail NVARCHAR(50) NOT NULL,--�û�����  �����û���  һ���û������ж����Ŀ
	ProjectsInitiated NVARCHAR(50) NULL, --�������Ŀ
	ProjectsSupported NVARCHAR(50) NULL, --֧�ֵ���Ŀ
	FavoriteProjects NVARCHAR(50) NULL, --ϲ������Ŀ
)
--drop table UserRelatedItems
select * from UserRelatedItems

--��Ŀ��
CREATE TABLE ProjectTb
(
	ProjectID INT IDENTITY(101,1) NOT NULL, --���
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
	ProjectAddress NVARCHAR(500) NOT NULL,	--��Ŀ�����ַ
	ReleaseStatus NVARCHAR(20) NOT NULL,	--����״̬
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

