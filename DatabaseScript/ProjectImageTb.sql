grant exec on abcd.dbo.u_id to sa  --登录用户
USE zhongchouDB


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
('../Content/Images/IndexImg/10.jpg',1001,110),
('../Content/Images/IndexImg/11.jpg',1001,111),
('../Content/Images/IndexImg/12.jpg',1001,112),
('../Content/Images/IndexImg/13.jpg',1001,113),
('../Content/Images/IndexImg/14.jpg',1001,114),
('../Content/Images/IndexImg/15.jpg',1001,115),
('../Content/Images/IndexImg/16.jpg',1001,116),
('../Content/Images/IndexImg/17.jpg',1001,117),
('../Content/Images/IndexImg/18.jpg',1001,118),
('../Content/Images/IndexImg/19.jpg',1001,119),
('../Content/Images/IndexImg/20.jpg',1001,120)

select UserName from UserInfoTb where UserName='众筹之光'