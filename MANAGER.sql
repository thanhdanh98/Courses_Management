/*Table chứa thông tin người quản lý*/
CREATE TABLE MANAGER
(
	ManagerID char(7) not null,
	ManagerPw char(15) not null,
	ManagerName nvarchar(50) not null,
	ManagerDob date not null,
	ManagerGender nvarchar(3) not null,
	ManagerAddress nvarchar(100) null,
	ManagerMobile char(11) null,
	ManagerEmail char(40) null,
	constraint pk_Manager primary key (ManagerID)
)
GO
/*Ràng buộc giới tính*/
ALTER TABLE MANAGER ADD CONSTRAINT C_MANAGER_GENDER
CHECK (ManagerGender in (N'Nam', N'Nữ'))