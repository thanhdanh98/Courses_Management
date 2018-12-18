CREATE TABLE CLASS
(
	ClassID char(10) not null,
	ClassName nvarchar(50) not null,
	ClassTeacherID char(7) not null,
	ClassNumberOfStudents int null,
	constraint pk_class primary key (ClassID)
)
