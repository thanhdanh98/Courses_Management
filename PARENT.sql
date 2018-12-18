/*Table chứa thông tin phụ huynh*/
CREATE TABLE PARENT
(
	ParentID char(11) not null,
	ParentPw char(15) not null,
	ParentName nvarchar(50) not null,
	ParentDob date not null,
	ParentGender nvarchar(3) not null,
	ParentAddress nvarchar(100) null,
	ParentMobile char(11) null,
	ParentEmail char(40) null,
	ParentChildID char(7) not null,
	constraint pk_Parent primary key (ParentID)
)
GO
/*Ràng buộc giới tính*/
ALTER TABLE PARENT ADD CONSTRAINT C_PARENT_GENDER
CHECK (ParentGender in (N'Nam', N'Nữ'))