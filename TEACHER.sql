/*Table chứa thông tin giáo viên*/
CREATE TABLE TEACHER
(
	TeacherID char(7) not null,
	TeacherPw char(15) not null,
	TeacherName nvarchar(50) not null,
	TeacherDob date not null,
	TeacherGender nvarchar(3) not null,
	TeacherAddress nvarchar(100) null,
	TeacherMobile char(11) null,
	TeacherEmail char(40) null,
	TeacherCourse char(7) not null,
	constraint pk_Teacher primary key (TeacherID)
)
GO
/*Ràng buộc giới tính*/
ALTER TABLE TEACHER ADD CONSTRAINT C_TEACHER_GENDER
CHECK (TeacherGender in (N'Nam', N'Nữ'))