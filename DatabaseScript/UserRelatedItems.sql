select RelatedID,UserEmail,ProjectsInitiated,ProjectsSupported,FavoriteProjects from UserRelatedItems

--drop table UserRelatedItems

insert into UserRelatedItems values('123@qq.com','101','','')
insert into UserRelatedItems values('123@qq.com','','102','')
insert into UserRelatedItems values('123@qq.com','','','103')


insert into UserRelatedItems values('123@qq.com','','104','')
insert into UserRelatedItems values('123@qq.com','','','106')
insert into UserRelatedItems values('123@qq.com','101','','')
insert into UserRelatedItems values('123@qq.com','120','','')
insert into UserRelatedItems values('123@qq.com','121','','')

select ProjectID,ProjectName,ProjectTargetDays,cast(AlreadyRaisedMoney/TargetAmountOfMoney as NUMERIC(18,2))*100 as sum,TargetAmountOfMoney,ReleaseDate,ReleaseStatus
from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri
where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsInitiated and uri.UserEmail='123@qq.com'


select COUNT(0) from ProjectTb pt,UserInfoTb ui,UserRelatedItems uri
where uri.UserEmail=ui.UserEmail and pt.ProjectID=uri.ProjectsInitiated and uri.UserEmail='123@qq.com'