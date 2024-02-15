use project1
insert into Roles(RoleID,name,Permissions)
VALUES
	('1','FYP_Committee','SELECT, INSERT, UPDATE, DELETE'),
	('2','Supervisor','SELECT, INSERT, UPDATE'),
	('3','PanelMember','SELECT, INSERT, UPDATE'),
	('4','Student','SELECT, INSERT');

insert into Users(RoleID,email,Username,Password)
VALUES
	('1','FYPadmin1@nu.edu.pk','CommittieeMember1','12345678'),
	('4','i200699@nu.edu.pk','hammad.71','12345678'),
	('4','i200794@nu.edu.pk','fazoolin','12345678'),
	--('2','Supervisor1@nu.edu.pk','Adnan.Tariq','12345678'),
	('4','JamesBond@nu.edu.pk','James.Bond','112345678'),
	('3','PanelMember1@nu.edu.pk','Faisal.Cheema','12345678');
	

insert into Faculty(ID,F_Num,P_name,roll_num)
VALUES
	('001','F01','Dr.Bokhari','F001'),
	('004','F02','Dr.AdnanTariq','F004');
insert into Student(S_ID,S_name,roll_num,Group_ID)
VALUES
	('002','Hammad','0699','1'),
	('003','Usman','0794','1');


insert into WorksOn(roll_no,FYP_ID)
VALUES
	('0699','FYP1'),
	('0794','FYP1');

insert into supervises(S_ID,Proj_ID)
VALUES
	('F02','FYP1'),
	('F02','FYP2'),
	('F02','FYP3');

insert into Evaluates(S_ID,Proj_ID,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,Review,GradeS)
VALUES
	('F02','FYP1'),
	('F02','FYP2'),
	('F02','FYP3');



	
insert into FYP(FYP_ID,Title,description,Deadline)
Values
	('FYP6','RoboWars','You are required to design a military standard war craft', CONVERT(DATE,'2022-07-15')),
	('FYP7','IronMan Suit','You are required to Make Mark 46 Iron Man Suit', CONVERT(DATE,'2022-07-15')),
	('FYP8','Batmobile','You are required to make a Batmobile.', CONVERT(DATE,'2022-06-15')),
	('FYP1','Block Chain','Design a Block Chain system for crypto Currency', CONVERT(DATE,'2022-06-02')), 
	('FYP2','Machine Learning','Design a software that can help to calculate the traffic flow', CONVERT(DATE,'2022-06-12')),
	('FYP3','Artificial Intelligence','Design an algorithim that can detect face id in a crowd', CONVERT(DATE,'2022-06-03')),
	('FYP4','Marketing an advert','You are required to start an adevertisment propaganda for a company', CONVERT(DATE,'2022-06-15')),
	('FYP5','Mobile Application','Design a mobile application of an arcade game', CONVERT(DATE,'2022-06-13'));
	
	



select *
from Roles inner join Users on roles.RoleID = Users.RoleID;

--select Users.Username from Users where Users.Username like 'CommittieeMember1';

select * from Users inner join Faculty on Users.ID = Faculty.ID where Faculty.F_NUM like 'F01'  AND Users.Username like 'CommittieeMember1'

SELECT FYP.FYP_ID,FYP.TITLE,FYP.DESCRIPTION,FYP.DEADLINE FROM Student,FYP INNER JOIN WorksOn ON FYP.FYP_ID = WorksOn.FYP_ID WHERE WorksOn.roll_no = Student.roll_num

select F_Num as Number,P_name as Instructor_Name,Faculty.roll_num from Faculty, Evaluates,WorksOn where Evaluates.Proj_ID = WorksOn.FYP_ID

select * from Evaluates where Evaluates.S_ID = @SID; 

select * from Users,Roles where Users.Username = 'CommittieeMember1' AND  users.RoleID = Roles.RoleID and Roles.RoleID = '1';

select F_Num from Users, Faculty where Username = 'CommittieeMember1' and users.ID = Faculty.ID

select Student.S_ID,Student.roll_num,Student.S_name,Student.Group_ID,WorksOn.FYP_ID from WorksOn,Student where Student.roll_num = WorksOn.roll_no;

select Faculty.F_Num as Faculty_Num,Faculty.P_name as Name,supervises.Proj_ID as FYP_Supervising from Faculty,supervises where supervises.S_ID = Faculty.F_Num

select count(supervises.S_ID) from supervises,Faculty  where S_ID = Faculty.F_Num;

--select users.ID from Users where Users.Username = 'fazoolin'
declare @value as int
set @value = (select Users.ID from Users where Username = 'fazoolin')
insert into Student(S_ID,S_name,roll_num,Group_ID)
VALUES
	(@value,'Usman','0794','1');
create procedure InsertS @S_name VARCHAR(30),@roll_num varchar(7),@Group_ID varchar(5),@User_Name VARCHAR(50),@RoleID varchar(5),@email VARCHAR(50),@Pass VARCHAR(30)
AS
BEGIN
	INSERT INTO USERS VALUES(@RoleID,@email,@User_Name,@Pass)
	declare @value as varchar(5)
set @value = (select Users.ID from Users where Username = @User_Name)
	INSERT INTO Student VALUES(@value,@S_name,@roll_num,@Group_ID)
END

create procedure InsertPan @P_name VARCHAR(30),@roll_num varchar(7),@F_num varchar(5),@User_Name VARCHAR(50),@RoleID varchar(5),@email VARCHAR(50),@Pass VARCHAR(30),@FYP_ID varchar(5)
AS
BEGIN
	INSERT INTO USERS VALUES(@RoleID,@email,@User_Name,@Pass)
	declare @value as varchar(5)
	set @value = (select Users.ID from Users where Username = @User_Name)
	INSERT INTO Faculty VALUES(@value,@F_num,@P_name,@roll_num)
	INSERT INTO Evaluates VALUES(@F_num,@FYP_ID,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'F')
END



DELETE FROM Users WHERE Users.ID = 3;

EXEC InsertS @S_name='',@roll_num='',@Group_ID = '', @User_Name = '',@RoleID = '',@email = '',@Pass = '';

SELECT * FROM Users,Student WHERE Users.Username='hammad.71' AND Student.roll_num = '0794'

select* from FYP where FYP.FYP_ID = 'FYP1'

select* from FYP,WorksOn where FYP.FYP_ID = WorksOn.FYP_ID AND WorksOn.roll_no = '0699';


select Student.roll_num from Student,Users where Student.S_ID = '7';
select Student.Group_ID from Student,Users where Student.S_ID = '7';
select Evaluates.Review from Faculty, Evaluates,WorksOn where Evaluates.Proj_ID = 'FYP1'; 
select F_Num as Number,P_name as Instructor_Name,Faculty.roll_num from Faculty, Evaluates,supervises where  supervises.Proj_ID = ;
select Faculty.F_Num as Faculty_Num,Faculty.P_name as Panle_Member_Name from Evaluates inner join Faculty on Evaluates.S_ID = Faculty.F_Num where Evaluates.Review = NULL; 
