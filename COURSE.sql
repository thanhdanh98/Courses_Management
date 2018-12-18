CREATE TABLE COURSE
(
	CourseID char(10) not null,
	CourseName nvarchar(50) not null,
	CourseDateStart date not null,
	CourseDateEnd date null,
	CourseNumberOfClasses int null,
	constraint pk_course primary key (CourseID)
)
