/*Table chứa thông tin học sinh*/
CREATE TABLE STUDENT
(
	/*StudentID cũng dùng làm username*/
	StudentID char(7) not null,
	StudentPw char(15) NOT null,
	StudentName nvarchar(50) NOT null,
	StudentDob date NOT null,
	StudentGender nvarchar(3) NOT null,
	StudentAddress nvarchar(100) null,
	StudentMobile char(11) null,
	StudentEmail char(40) null,
	StudentCourse char(10) NOT null,
	StudentParentID char(11) null,
	constraint pk_student primary key (StudentID)
)
GO
/*Ràng buộc giới tính*/
ALTER TABLE STUDENT ADD CONSTRAINT C_STUDENT_GENDER
CHECK (StudentGender in (N'Nam', N'Nữ'))