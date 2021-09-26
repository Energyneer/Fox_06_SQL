CREATE DATABASE [TASK6]
GO

USE [TASK6]
GO

CREATE TABLE COURSES(
	[COURSE_ID] [bigint] IDENTITY(1,1) NOT NULL CONSTRAINT PK_COURSES PRIMARY KEY,
	[NAME] [varchar](50) NOT NULL,
	[DESCRIPTION] [varchar](255) NULL)
GO

CREATE TABLE GROUPS(
	[GROUP_ID] [bigint] IDENTITY(1,1) NOT NULL CONSTRAINT PK_GROUPS PRIMARY KEY,
	[COURSE_ID] [bigint] NOT NULL,
	[NAME] [varchar](50) NOT NULL)
GO

CREATE TABLE STUDENTS(
	[STUDENT_ID] [bigint] IDENTITY(1,1) NOT NULL CONSTRAINT PK_STUDENTS PRIMARY KEY,
	[GROUP_ID] [bigint] NOT NULL,
	[FIRST_NAME] [varchar](50) NOT NULL,
	[LAST_NAME] [varchar](50) NOT NULL)
GO

ALTER TABLE GROUPS ADD CONSTRAINT FK_GROUPS_COURSES
   FOREIGN KEY (COURSE_ID) 
        REFERENCES COURSES (COURSE_ID)
GO

ALTER TABLE STUDENTS ADD CONSTRAINT FK_STUDENTS_GROUPS
   FOREIGN KEY (GROUP_ID) 
        REFERENCES GROUPS (GROUP_ID)
GO


USE [TASK6]
GO

INSERT INTO [dbo].[COURSES]
           ([NAME]
           ,[DESCRIPTION])
     VALUES
           ('C#/.NET',
           'ASP.NET, WinForms(WPF), Blazor')

INSERT INTO [dbo].[COURSES]
           ([NAME]
           ,[DESCRIPTION])
     VALUES
           ('JAVA',
           'Hibernate, Spring')

INSERT INTO [dbo].[COURSES]
           ([NAME]
           ,[DESCRIPTION])
     VALUES
           ('Frontend',
           'JS, React')
GO

INSERT INTO [dbo].[GROUPS]
           ([COURSE_ID]
           ,[NAME])
     VALUES
           ((SELECT TOP(1) COURSES.COURSE_ID FROM COURSES WHERE COURSES.NAME = 'C#/.NET'), 'SR-01')

INSERT INTO [dbo].[GROUPS]
           ([COURSE_ID]
           ,[NAME])
     VALUES
           ((SELECT TOP(1) COURSES.COURSE_ID FROM COURSES WHERE COURSES.NAME = 'C#/.NET'), 'SR-02')

INSERT INTO [dbo].[GROUPS]
           ([COURSE_ID]
           ,[NAME])
     VALUES
           ((SELECT TOP(1) COURSES.COURSE_ID FROM COURSES WHERE COURSES.NAME = 'JAVA'), 'SR-03')

INSERT INTO [dbo].[GROUPS]
           ([COURSE_ID]
           ,[NAME])
     VALUES
           ((SELECT TOP(1) COURSES.COURSE_ID FROM COURSES WHERE COURSES.NAME = 'Frontend'), 'SR-04')
GO

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-01'),
           'JOHN',
           'SMITH')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-01'),
           'ALEX',
           'JOHNSON')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-01'),
           'ALEKSANDR',
           'IVANOV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'ALEKSEI',
           'PETROV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'JOHN',
           'MILLER')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'EMMA',
           'DAVIS')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'EKATERINA',
           'SMIRNOVA')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'JOE',
           'JAMES')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'SOFIA',
           'SIDOROVA')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'FEDOR',
           'VOLKOV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'NIKOLAY',
           'POPOV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'ENTONI',
           'MASON')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'DAVID',
           'JACOB')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-02'),
           'MIKHAIL',
           'SOKOLOV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-03'),
           'PETR',
           'VASILIEV')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-03'),
           'ELENA',
           'ZAYTSEVA')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-04'),
           'NOAH',
           'LIAM')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-04'),
           'ISABELLA',
           'WILLIAM')

INSERT INTO [dbo].[STUDENTS]
           ([GROUP_ID]
           ,[FIRST_NAME]
           ,[LAST_NAME])
     VALUES
           ((SELECT TOP(1) GROUPS.GROUP_ID FROM GROUPS WHERE GROUPS.NAME = 'SR-04'),
           'VIKTOR',
           'KOTOV')
GO