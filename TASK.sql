CREATE TABLE TASK
(
	TaskID char(10) not null,
	TaskClass char(10) not null,
	TaskName nvarchar(50) not null,
	TaskDescription nvarchar(256) null,
	TaskDateStart date not null,
	TaskDeadline date not null,
	TaskDateSubmission date null,
	TaskSubmissionState nvarchar(10) not null,
	TaskContent char(256) null,
	TaskScore float null,
	constraint pk_task primary key (TaskID, TaskClass)
)
GO
ALTER TABLE TASK ADD CONSTRAINT C_TASK_SUBMISSION_STATE
CHECK (TaskSubmissionState in (N'Đã nộp', N'Chưa nộp'))