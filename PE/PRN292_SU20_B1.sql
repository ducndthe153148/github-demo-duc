﻿create database [PRN292_Summer2020_B1]
go
USE [PRN292_Summer2020_B1]
GO
/****** Object:  Table [dbo].[COURSE_SCHEDULES]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSE_SCHEDULES](
	[TeachingScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[TeachingDate] [date] NULL,
	[Slot] [int] NULL,
	[RoomId] [int] NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_TEACHING_SCHEDULES] PRIMARY KEY CLUSTERED 
(
	[TeachingScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COURSES]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COURSES](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseCode] [nvarchar](50) NULL,
	[CourseDescription] [nvarchar](300) NULL,
	[SubjectId] [int] NOT NULL,
	[InstructorId] [int] NULL,
	[TermId] [int] NULL,
	[CampusID] [int] NULL,
 CONSTRAINT [PK_COURSES] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DEPARTMENTS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENTS](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[Description] [nvarchar](300) NULL,
 CONSTRAINT [PK_DEPARTMENTS] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INSTRUCTORS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INSTRUCTORS](
	[InstructorId] [int] IDENTITY(1,1) NOT NULL,
	[InstructorFirstName] [nvarchar](50) NULL,
	[InstructorMidName] [nvarchar](50) NULL,
	[InstructorLastName] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_INSTRUCTORS] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROLL_CALL_BOOKS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLL_CALL_BOOKS](
	[RollCallBookId] [int] IDENTITY(1,1) NOT NULL,
	[TeachingScheduleId] [int] NULL,
	[StudentId] [int] NULL,
	[IsAbsent] [bit] NULL,
	[Comment] [nvarchar](300) NULL,
 CONSTRAINT [PK_ROLL_CALL_BOOKS] PRIMARY KEY CLUSTERED 
(
	[RollCallBookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ROOMS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOMS](
	[RoomId] [int] NOT NULL,
	[RoomCode] [nvarchar](50) NULL,
	[CampusId] [int] NULL,
	[CAP2acity] [int] NULL,
	[Type] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_ROOMS] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENT_COURSE]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT_COURSE](
	[CourseId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_STUDENT_COURSE] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[StudentId] [int] NOT NULL,
	[Roll#] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MidName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
 CONSTRAINT [PK_STUDENTS] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SUBJECTS]    Script Date: 7/6/2020 3:43:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECTS](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](50) NULL,
	[SubjectName] [nvarchar](50) NULL,
	[DepartmentId] [int] NULL,
 CONSTRAINT [PK_SUBJECTS] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[COURSE_SCHEDULES] ON 

GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (1, 1, CAST(N'2011-07-23' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (4, 4, CAST(N'2011-07-26' AS Date), 1, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (6, 4, CAST(N'2011-07-28' AS Date), 3, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (7, 5, CAST(N'2011-07-29' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (10, 6, CAST(N'2011-08-01' AS Date), 1, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (11, 6, CAST(N'2011-08-02' AS Date), 2, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (12, 6, CAST(N'2011-08-03' AS Date), 3, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (13, 7, CAST(N'2011-08-04' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (14, 8, CAST(N'2011-08-05' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (15, 1, CAST(N'2011-08-06' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (16, 4, CAST(N'2011-08-07' AS Date), 1, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (17, 5, CAST(N'2011-07-23' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (18, 6, CAST(N'2011-07-24' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (19, 7, CAST(N'2011-07-25' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (20, 8, CAST(N'2011-07-26' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (21, 1, CAST(N'2011-07-27' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (22, 4, CAST(N'2011-07-28' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (23, 5, CAST(N'2011-07-29' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (24, 6, CAST(N'2011-07-30' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (25, 7, CAST(N'2011-07-31' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (26, 8, CAST(N'2011-08-01' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (27, 1, CAST(N'2011-08-02' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (28, 4, CAST(N'2011-08-03' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (29, 5, CAST(N'2011-08-04' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (30, 6, CAST(N'2011-08-05' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (31, 7, CAST(N'2011-08-06' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (32, 8, CAST(N'2011-08-07' AS Date), 2, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (33, 1, CAST(N'2011-07-23' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (34, 1, CAST(N'2011-07-24' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (35, 1, CAST(N'2011-07-25' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (36, 1, CAST(N'2011-07-26' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (37, 1, CAST(N'2011-07-27' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (38, 1, CAST(N'2011-07-28' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (39, 1, CAST(N'2011-07-29' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (40, 1, CAST(N'2011-07-30' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (41, 1, CAST(N'2011-07-31' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (42, 1, CAST(N'2011-08-01' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (43, 1, CAST(N'2011-08-02' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (44, 1, CAST(N'2011-08-03' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (45, 1, CAST(N'2011-08-04' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (46, 1, CAST(N'2011-08-05' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (47, 1, CAST(N'2011-08-06' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (48, 1, CAST(N'2011-08-07' AS Date), 3, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (50, 4, CAST(N'2011-07-23' AS Date), 4, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (51, 4, CAST(N'2011-07-23' AS Date), 5, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (52, 5, CAST(N'2011-07-23' AS Date), 6, 216, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (53, 7, CAST(N'2011-07-23' AS Date), 2, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (54, 6, CAST(N'2011-07-23' AS Date), 3, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (55, 1, CAST(N'2011-07-23' AS Date), 4, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (56, 7, CAST(N'2011-07-23' AS Date), 5, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (57, 7, CAST(N'2011-07-23' AS Date), 6, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (58, 5, CAST(N'2011-07-23' AS Date), 1, 214, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (59, 8, CAST(N'2011-07-23' AS Date), 1, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (60, 8, CAST(N'2011-07-23' AS Date), 2, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (61, 8, CAST(N'2011-07-23' AS Date), 3, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (62, 9, CAST(N'2011-07-23' AS Date), 4, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (63, 9, CAST(N'2011-07-23' AS Date), 5, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (64, 9, CAST(N'2011-07-23' AS Date), 6, 215, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (65, 10, CAST(N'2011-07-23' AS Date), 1, 217, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (66, 10, CAST(N'2011-07-23' AS Date), 2, 217, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (67, 10, CAST(N'2011-07-23' AS Date), 3, 218, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (68, 4, CAST(N'2011-07-23' AS Date), 6, 218, NULL)
GO
INSERT [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId], [CourseId], [TeachingDate], [Slot], [RoomId], [Description]) VALUES (69, 5, CAST(N'2011-07-23' AS Date), 2, 219, NULL)
GO
SET IDENTITY_INSERT [dbo].[COURSE_SCHEDULES] OFF
GO
SET IDENTITY_INSERT [dbo].[COURSES] ON 

GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (1, N'SE0507', N'SE0507', 30, 1, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (4, N'SE0508', N'SE0508', 30, 2, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (5, N'SE0509', N'SE0509', 30, 3, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (6, N'SE0511', N'SE0511', 30, 4, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (7, N'SE0512', N'SE0512', 30, 1, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (8, N'SE0510', N'SE0510', 30, 2, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (9, N'SE0515', N'SE0515', 30, 3, 5, 1)
GO
INSERT [dbo].[COURSES] ([CourseId], [CourseCode], [CourseDescription], [SubjectId], [InstructorId], [TermId], [CampusID]) VALUES (10, N'SE0519', N'SE0519', 30, 4, 5, 1)
GO
SET IDENTITY_INSERT [dbo].[COURSES] OFF
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENTS] ON 

GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (1, N'Business Administration', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (2, N'Chinese', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (3, N'Computing Fundamental', N'CF')
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (4, N'English', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (5, N'English Preparation Course', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (6, N'Greenwich 3 years', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (7, N'Information Technology Specialization', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (8, N'JAP2anese', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (9, N'Mathematics', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (10, N'Physical Training', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (11, N'Soft Skill', NULL)
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (12, N'Software Engineering', N'SE')
GO
INSERT [dbo].[DEPARTMENTS] ([DepartmentId], [DepartmentName], [Description]) VALUES (13, N'Top-up', NULL)
GO
SET IDENTITY_INSERT [dbo].[DEPARTMENTS] OFF
GO
SET IDENTITY_INSERT [dbo].[INSTRUCTORS] ON 

GO
INSERT [dbo].[INSTRUCTORS] ([InstructorId], [InstructorFirstName], [InstructorMidName], [InstructorLastName], [DepartmentId]) VALUES (1, N'Thu', N'Vinh', N'Tran', 12)
GO
INSERT [dbo].[INSTRUCTORS] ([InstructorId], [InstructorFirstName], [InstructorMidName], [InstructorLastName], [DepartmentId]) VALUES (2, N'Quang', N'Ngoc', N'La', 3)
GO
INSERT [dbo].[INSTRUCTORS] ([InstructorId], [InstructorFirstName], [InstructorMidName], [InstructorLastName], [DepartmentId]) VALUES (3, N'Tu', N'Quang', N'Do', 3)
GO
INSERT [dbo].[INSTRUCTORS] ([InstructorId], [InstructorFirstName], [InstructorMidName], [InstructorLastName], [DepartmentId]) VALUES (4, N'Trung', N'Duc', N'Nguyen', 12)
GO
SET IDENTITY_INSERT [dbo].[INSTRUCTORS] OFF
GO
SET IDENTITY_INSERT [dbo].[ROLL_CALL_BOOKS] ON 

GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1, 1, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (2, 1, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (3, 1, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (4, 1, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (5, 1, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (6, 1, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (7, 1, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (8, 1, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (9, 1, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (10, 1, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (11, 1, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (12, 1, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (13, 1, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (14, 1, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (15, 1, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (16, 1, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (17, 1, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (18, 1, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (19, 1, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (20, 1, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (21, 1, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (22, 1, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (23, 1, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (24, 1, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (25, 1, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (26, 1, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (27, 1, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (28, 1, 28, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (29, 1, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (30, 1, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (91, 4, 31, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (92, 4, 32, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (93, 4, 33, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (94, 4, 34, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (95, 4, 35, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (96, 4, 36, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (97, 4, 37, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (98, 4, 38, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (99, 4, 39, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (100, 4, 40, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (101, 4, 41, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (102, 4, 42, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (103, 4, 43, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (104, 4, 44, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (105, 4, 45, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (106, 4, 46, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (107, 4, 47, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (108, 4, 48, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (109, 4, 49, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (110, 4, 50, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (111, 4, 51, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (112, 4, 52, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (113, 4, 53, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (114, 4, 54, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (115, 4, 55, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (116, 4, 56, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (117, 4, 57, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (118, 4, 58, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (147, 6, 31, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (148, 6, 32, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (149, 6, 33, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (150, 6, 34, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (151, 6, 35, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (152, 6, 36, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (153, 6, 37, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (154, 6, 38, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (155, 6, 39, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (156, 6, 40, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (157, 6, 41, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (158, 6, 42, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (159, 6, 43, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (160, 6, 44, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (161, 6, 45, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (162, 6, 46, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (163, 6, 47, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (164, 6, 48, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (165, 6, 49, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (166, 6, 50, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (167, 6, 51, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (168, 6, 52, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (169, 6, 53, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (170, 6, 54, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (171, 6, 55, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (172, 6, 56, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (173, 6, 57, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (174, 6, 58, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (175, 7, 59, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (176, 7, 60, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (177, 7, 61, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (178, 7, 62, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (179, 7, 63, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (180, 7, 64, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (181, 7, 65, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (182, 7, 66, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (183, 7, 67, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (184, 7, 68, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (185, 7, 69, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (186, 7, 70, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (187, 7, 71, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (188, 7, 72, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (189, 7, 73, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (190, 7, 74, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (191, 7, 75, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (192, 7, 76, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (193, 7, 77, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (194, 7, 78, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (195, 7, 79, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (196, 7, 80, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (197, 7, 81, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (198, 7, 82, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (199, 7, 83, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (200, 7, 84, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (201, 7, 85, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (202, 7, 86, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (203, 7, 87, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (262, 10, 147, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (263, 10, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (264, 10, 149, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (265, 10, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (266, 10, 151, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (267, 10, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (268, 10, 153, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (269, 10, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (270, 10, 155, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (271, 10, 156, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (272, 10, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (273, 10, 158, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (274, 10, 159, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (275, 10, 160, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (276, 10, 161, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (277, 10, 162, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (278, 10, 163, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (279, 10, 164, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (280, 10, 165, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (281, 10, 166, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (282, 10, 167, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (283, 10, 168, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (284, 10, 169, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (285, 10, 170, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (286, 10, 171, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (287, 10, 172, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (288, 10, 173, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (289, 10, 174, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (290, 10, 175, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (291, 10, 176, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (292, 11, 147, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (293, 11, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (294, 11, 149, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (295, 11, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (296, 11, 151, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (297, 11, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (298, 11, 153, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (299, 11, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (300, 11, 155, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (301, 11, 156, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (302, 11, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (303, 11, 158, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (304, 11, 159, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (305, 11, 160, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (306, 11, 161, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (307, 11, 162, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (308, 11, 163, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (309, 11, 164, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (310, 11, 165, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (311, 11, 166, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (312, 11, 167, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (313, 11, 168, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (314, 11, 169, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (315, 11, 170, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (316, 11, 171, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (317, 11, 172, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (318, 11, 173, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (319, 11, 174, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (320, 11, 175, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (321, 11, 176, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (322, 12, 147, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (323, 12, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (324, 12, 149, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (325, 12, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (326, 12, 151, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (327, 12, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (328, 12, 153, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (329, 12, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (330, 12, 155, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (331, 12, 156, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (332, 12, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (333, 12, 158, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (334, 12, 159, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (335, 12, 160, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (336, 12, 161, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (337, 12, 162, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (338, 12, 163, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (339, 12, 164, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (340, 12, 165, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (341, 12, 166, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (342, 12, 167, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (343, 12, 168, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (344, 12, 169, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (345, 12, 170, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (346, 12, 171, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (347, 12, 172, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (348, 12, 173, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (349, 12, 174, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (350, 12, 175, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (351, 12, 176, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (352, 13, 88, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (353, 13, 89, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (354, 13, 90, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (355, 13, 91, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (356, 13, 92, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (357, 13, 93, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (358, 13, 94, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (359, 13, 95, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (360, 13, 96, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (361, 13, 97, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (362, 13, 98, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (363, 13, 99, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (364, 13, 100, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (365, 13, 101, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (366, 13, 102, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (367, 13, 103, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (368, 13, 104, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (369, 13, 105, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (370, 13, 106, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (371, 13, 107, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (372, 13, 108, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (373, 13, 109, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (374, 13, 110, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (375, 13, 111, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (376, 13, 112, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (377, 13, 113, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (378, 13, 114, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (379, 13, 115, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (380, 13, 116, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (381, 13, 117, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (382, 14, 118, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (383, 14, 119, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (384, 14, 120, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (385, 14, 121, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (386, 14, 122, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (387, 14, 123, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (388, 14, 124, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (389, 14, 125, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (390, 14, 126, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (391, 14, 127, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (392, 14, 128, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (393, 14, 129, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (394, 14, 130, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (395, 14, 131, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (396, 14, 132, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (397, 14, 133, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (398, 14, 134, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (399, 14, 135, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (400, 14, 136, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (401, 14, 137, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (402, 14, 138, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (403, 14, 139, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (404, 14, 140, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (405, 14, 141, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (406, 14, 142, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (407, 14, 143, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (408, 14, 144, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (409, 14, 145, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (410, 14, 146, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (411, 15, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (412, 15, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (413, 15, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (414, 15, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (415, 15, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (416, 15, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (417, 15, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (418, 15, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (419, 15, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (420, 15, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (421, 15, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (422, 15, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (423, 15, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (424, 15, 14, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (425, 15, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (426, 15, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (427, 15, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (428, 15, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (429, 15, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (430, 15, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (431, 15, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (432, 15, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (433, 15, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (434, 15, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (435, 15, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (436, 15, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (437, 15, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (438, 15, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (439, 15, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (440, 15, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (441, 16, 31, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (442, 16, 32, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (443, 16, 33, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (444, 16, 34, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (445, 16, 35, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (446, 16, 36, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (447, 16, 37, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (448, 16, 38, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (449, 16, 39, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (450, 16, 40, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (451, 16, 41, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (452, 16, 42, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (453, 16, 43, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (454, 16, 44, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (455, 16, 45, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (456, 16, 46, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (457, 16, 47, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (458, 16, 48, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (459, 16, 49, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (460, 16, 50, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (461, 16, 51, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (462, 16, 52, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (463, 16, 53, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (464, 16, 54, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (465, 16, 55, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (466, 16, 56, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (467, 16, 57, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (468, 16, 58, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (469, 17, 59, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (470, 17, 60, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (471, 17, 61, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (472, 17, 62, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (473, 17, 63, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (474, 17, 64, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (475, 17, 65, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (476, 17, 66, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (477, 17, 67, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (478, 17, 68, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (479, 17, 69, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (480, 17, 70, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (481, 17, 71, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (482, 17, 72, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (483, 17, 73, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (484, 17, 74, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (485, 17, 75, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (486, 17, 76, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (487, 17, 77, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (488, 17, 78, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (489, 17, 79, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (490, 17, 80, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (491, 17, 81, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (492, 17, 82, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (493, 17, 83, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (494, 17, 84, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (495, 17, 85, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (496, 17, 86, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (497, 17, 87, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (498, 18, 147, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (499, 18, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (500, 18, 149, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (501, 18, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (502, 18, 151, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (503, 18, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (504, 18, 153, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (505, 18, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (506, 18, 155, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (507, 18, 156, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (508, 18, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (509, 18, 158, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (510, 18, 159, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (511, 18, 160, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (512, 18, 161, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (513, 18, 162, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (514, 18, 163, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (515, 18, 164, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (516, 18, 165, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (517, 18, 166, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (518, 18, 167, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (519, 18, 168, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (520, 18, 169, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (521, 18, 170, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (522, 18, 171, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (523, 18, 172, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (524, 18, 173, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (525, 18, 174, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (526, 18, 175, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (527, 18, 176, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (528, 19, 88, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (529, 19, 89, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (530, 19, 90, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (531, 19, 91, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (532, 19, 92, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (533, 19, 93, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (534, 19, 94, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (535, 19, 95, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (536, 19, 96, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (537, 19, 97, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (538, 19, 98, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (539, 19, 99, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (540, 19, 100, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (541, 19, 101, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (542, 19, 102, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (543, 19, 103, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (544, 19, 104, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (545, 19, 105, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (546, 19, 106, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (547, 19, 107, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (548, 19, 108, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (549, 19, 109, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (550, 19, 110, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (551, 19, 111, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (552, 19, 112, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (553, 19, 113, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (554, 19, 114, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (555, 19, 115, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (556, 19, 116, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (557, 19, 117, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (558, 20, 118, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (559, 20, 119, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (560, 20, 120, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (561, 20, 121, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (562, 20, 122, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (563, 20, 123, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (564, 20, 124, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (565, 20, 125, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (566, 20, 126, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (567, 20, 127, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (568, 20, 128, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (569, 20, 129, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (570, 20, 130, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (571, 20, 131, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (572, 20, 132, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (573, 20, 133, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (574, 20, 134, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (575, 20, 135, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (576, 20, 136, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (577, 20, 137, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (578, 20, 138, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (579, 20, 139, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (580, 20, 140, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (581, 20, 141, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (582, 20, 142, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (583, 20, 143, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (584, 20, 144, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (585, 20, 145, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (586, 20, 146, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (587, 21, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (588, 21, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (589, 21, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (590, 21, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (591, 21, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (592, 21, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (593, 21, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (594, 21, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (595, 21, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (596, 21, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (597, 21, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (598, 21, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (599, 21, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (600, 21, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (601, 21, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (602, 21, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (603, 21, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (604, 21, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (605, 21, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (606, 21, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (607, 21, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (608, 21, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (609, 21, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (610, 21, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (611, 21, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (612, 21, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (613, 21, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (614, 21, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (615, 21, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (616, 21, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (617, 22, 31, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (618, 22, 32, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (619, 22, 33, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (620, 22, 34, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (621, 22, 35, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (622, 22, 36, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (623, 22, 37, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (624, 22, 38, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (625, 22, 39, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (626, 22, 40, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (627, 22, 41, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (628, 22, 42, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (629, 22, 43, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (630, 22, 44, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (631, 22, 45, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (632, 22, 46, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (633, 22, 47, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (634, 22, 48, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (635, 22, 49, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (636, 22, 50, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (637, 22, 51, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (638, 22, 52, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (639, 22, 53, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (640, 22, 54, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (641, 22, 55, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (642, 22, 56, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (643, 22, 57, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (644, 22, 58, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (645, 23, 59, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (646, 23, 60, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (647, 23, 61, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (648, 23, 62, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (649, 23, 63, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (650, 23, 64, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (651, 23, 65, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (652, 23, 66, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (653, 23, 67, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (654, 23, 68, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (655, 23, 69, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (656, 23, 70, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (657, 23, 71, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (658, 23, 72, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (659, 23, 73, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (660, 23, 74, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (661, 23, 75, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (662, 23, 76, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (663, 23, 77, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (664, 23, 78, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (665, 23, 79, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (666, 23, 80, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (667, 23, 81, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (668, 23, 82, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (669, 23, 83, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (670, 23, 84, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (671, 23, 85, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (672, 23, 86, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (673, 23, 87, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (674, 24, 147, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (675, 24, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (676, 24, 149, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (677, 24, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (678, 24, 151, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (679, 24, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (680, 24, 153, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (681, 24, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (682, 24, 155, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (683, 24, 156, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (684, 24, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (685, 24, 158, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (686, 24, 159, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (687, 24, 160, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (688, 24, 161, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (689, 24, 162, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (690, 24, 163, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (691, 24, 164, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (692, 24, 165, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (693, 24, 166, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (694, 24, 167, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (695, 24, 168, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (696, 24, 169, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (697, 24, 170, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (698, 24, 171, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (699, 24, 172, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (700, 24, 173, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (701, 24, 174, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (702, 24, 175, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (703, 24, 176, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (704, 25, 88, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (705, 25, 89, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (706, 25, 90, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (707, 25, 91, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (708, 25, 92, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (709, 25, 93, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (710, 25, 94, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (711, 25, 95, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (712, 25, 96, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (713, 25, 97, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (714, 25, 98, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (715, 25, 99, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (716, 25, 100, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (717, 25, 101, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (718, 25, 102, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (719, 25, 103, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (720, 25, 104, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (721, 25, 105, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (722, 25, 106, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (723, 25, 107, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (724, 25, 108, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (725, 25, 109, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (726, 25, 110, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (727, 25, 111, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (728, 25, 112, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (729, 25, 113, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (730, 25, 114, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (731, 25, 115, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (732, 25, 116, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (733, 25, 117, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (734, 26, 118, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (735, 26, 119, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (736, 26, 120, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (737, 26, 121, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (738, 26, 122, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (739, 26, 123, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (740, 26, 124, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (741, 26, 125, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (742, 26, 126, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (743, 26, 127, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (744, 26, 128, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (745, 26, 129, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (746, 26, 130, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (747, 26, 131, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (748, 26, 132, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (749, 26, 133, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (750, 26, 134, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (751, 26, 135, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (752, 26, 136, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (753, 26, 137, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (754, 26, 138, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (755, 26, 139, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (756, 26, 140, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (757, 26, 141, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (758, 26, 142, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (759, 26, 143, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (760, 26, 144, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (761, 26, 145, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (762, 26, 146, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (763, 27, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (764, 27, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (765, 27, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (766, 27, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (767, 27, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (768, 27, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (769, 27, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (770, 27, 8, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (771, 27, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (772, 27, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (773, 27, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (774, 27, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (775, 27, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (776, 27, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (777, 27, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (778, 27, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (779, 27, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (780, 27, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (781, 27, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (782, 27, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (783, 27, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (784, 27, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (785, 27, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (786, 27, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (787, 27, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (788, 27, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (789, 27, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (790, 27, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (791, 27, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (792, 27, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (793, 28, 31, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (794, 28, 32, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (795, 28, 33, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (796, 28, 34, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (797, 28, 35, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (798, 28, 36, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (799, 28, 37, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (800, 28, 38, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (801, 28, 39, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (802, 28, 40, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (803, 28, 41, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (804, 28, 42, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (805, 28, 43, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (806, 28, 44, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (807, 28, 45, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (808, 28, 46, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (809, 28, 47, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (810, 28, 48, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (811, 28, 49, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (812, 28, 50, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (813, 28, 51, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (814, 28, 52, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (815, 28, 53, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (816, 28, 54, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (817, 28, 55, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (818, 28, 56, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (819, 28, 57, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (820, 28, 58, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (821, 29, 59, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (822, 29, 60, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (823, 29, 61, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (824, 29, 62, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (825, 29, 63, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (826, 29, 64, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (827, 29, 65, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (828, 29, 66, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (829, 29, 67, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (830, 29, 68, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (831, 29, 69, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (832, 29, 70, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (833, 29, 71, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (834, 29, 72, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (835, 29, 73, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (836, 29, 74, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (837, 29, 75, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (838, 29, 76, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (839, 29, 77, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (840, 29, 78, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (841, 29, 79, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (842, 29, 80, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (843, 29, 81, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (844, 29, 82, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (845, 29, 83, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (846, 29, 84, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (847, 29, 85, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (848, 29, 86, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (849, 29, 87, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (850, 30, 147, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (851, 30, 148, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (852, 30, 149, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (853, 30, 150, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (854, 30, 151, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (855, 30, 152, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (856, 30, 153, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (857, 30, 154, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (858, 30, 155, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (859, 30, 156, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (860, 30, 157, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (861, 30, 158, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (862, 30, 159, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (863, 30, 160, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (864, 30, 161, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (865, 30, 162, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (866, 30, 163, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (867, 30, 164, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (868, 30, 165, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (869, 30, 166, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (870, 30, 167, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (871, 30, 168, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (872, 30, 169, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (873, 30, 170, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (874, 30, 171, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (875, 30, 172, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (876, 30, 173, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (877, 30, 174, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (878, 30, 175, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (879, 30, 176, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (880, 31, 88, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (881, 31, 89, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (882, 31, 90, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (883, 31, 91, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (884, 31, 92, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (885, 31, 93, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (886, 31, 94, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (887, 31, 95, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (888, 31, 96, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (889, 31, 97, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (890, 31, 98, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (891, 31, 99, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (892, 31, 100, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (893, 31, 101, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (894, 31, 102, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (895, 31, 103, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (896, 31, 104, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (897, 31, 105, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (898, 31, 106, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (899, 31, 107, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (900, 31, 108, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (901, 31, 109, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (902, 31, 110, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (903, 31, 111, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (904, 31, 112, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (905, 31, 113, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (906, 31, 114, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (907, 31, 115, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (908, 31, 116, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (909, 31, 117, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (910, 32, 118, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (911, 32, 119, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (912, 32, 120, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (913, 32, 121, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (914, 32, 122, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (915, 32, 123, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (916, 32, 124, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (917, 32, 125, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (918, 32, 126, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (919, 32, 127, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (920, 32, 128, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (921, 32, 129, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (922, 32, 130, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (923, 32, 131, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (924, 32, 132, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (925, 32, 133, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (926, 32, 134, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (927, 32, 135, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (928, 32, 136, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (929, 32, 137, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (930, 32, 138, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (931, 32, 139, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (932, 32, 140, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (933, 32, 141, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (934, 32, 142, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (935, 32, 143, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (936, 32, 144, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (937, 32, 145, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (938, 32, 146, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (939, 33, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (940, 33, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (941, 33, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (942, 33, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (943, 33, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (944, 33, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (945, 33, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (946, 33, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (947, 33, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (948, 33, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (949, 33, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (950, 33, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (951, 33, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (952, 33, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (953, 33, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (954, 33, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (955, 33, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (956, 33, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (957, 33, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (958, 33, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (959, 33, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (960, 33, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (961, 33, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (962, 33, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (963, 33, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (964, 33, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (965, 33, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (966, 33, 28, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (967, 33, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (968, 33, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (969, 34, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (970, 34, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (971, 34, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (972, 34, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (973, 34, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (974, 34, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (975, 34, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (976, 34, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (977, 34, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (978, 34, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (979, 34, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (980, 34, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (981, 34, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (982, 34, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (983, 34, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (984, 34, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (985, 34, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (986, 34, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (987, 34, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (988, 34, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (989, 34, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (990, 34, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (991, 34, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (992, 34, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (993, 34, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (994, 34, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (995, 34, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (996, 34, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (997, 34, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (998, 34, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (999, 35, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1000, 35, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1001, 35, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1002, 35, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1003, 35, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1004, 35, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1005, 35, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1006, 35, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1007, 35, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1008, 35, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1009, 35, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1010, 35, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1011, 35, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1012, 35, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1013, 35, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1014, 35, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1015, 35, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1016, 35, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1017, 35, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1018, 35, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1019, 35, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1020, 35, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1021, 35, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1022, 35, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1023, 35, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1024, 35, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1025, 35, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1026, 35, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1027, 35, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1028, 35, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1029, 36, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1030, 36, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1031, 36, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1032, 36, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1033, 36, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1034, 36, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1035, 36, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1036, 36, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1037, 36, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1038, 36, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1039, 36, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1040, 36, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1041, 36, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1042, 36, 14, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1043, 36, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1044, 36, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1045, 36, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1046, 36, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1047, 36, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1048, 36, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1049, 36, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1050, 36, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1051, 36, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1052, 36, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1053, 36, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1054, 36, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1055, 36, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1056, 36, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1057, 36, 29, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1058, 36, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1059, 37, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1060, 37, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1061, 37, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1062, 37, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1063, 37, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1064, 37, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1065, 37, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1066, 37, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1067, 37, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1068, 37, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1069, 37, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1070, 37, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1071, 37, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1072, 37, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1073, 37, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1074, 37, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1075, 37, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1076, 37, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1077, 37, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1078, 37, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1079, 37, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1080, 37, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1081, 37, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1082, 37, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1083, 37, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1084, 37, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1085, 37, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1086, 37, 28, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1087, 37, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1088, 37, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1089, 38, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1090, 38, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1091, 38, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1092, 38, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1093, 38, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1094, 38, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1095, 38, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1096, 38, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1097, 38, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1098, 38, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1099, 38, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1100, 38, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1101, 38, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1102, 38, 14, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1103, 38, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1104, 38, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1105, 38, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1106, 38, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1107, 38, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1108, 38, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1109, 38, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1110, 38, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1111, 38, 23, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1112, 38, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1113, 38, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1114, 38, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1115, 38, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1116, 38, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1117, 38, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1118, 38, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1119, 39, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1120, 39, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1121, 39, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1122, 39, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1123, 39, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1124, 39, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1125, 39, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1126, 39, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1127, 39, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1128, 39, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1129, 39, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1130, 39, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1131, 39, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1132, 39, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1133, 39, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1134, 39, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1135, 39, 17, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1136, 39, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1137, 39, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1138, 39, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1139, 39, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1140, 39, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1141, 39, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1142, 39, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1143, 39, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1144, 39, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1145, 39, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1146, 39, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1147, 39, 29, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1148, 39, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1149, 40, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1150, 40, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1151, 40, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1152, 40, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1153, 40, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1154, 40, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1155, 40, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1156, 40, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1157, 40, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1158, 40, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1159, 40, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1160, 40, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1161, 40, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1162, 40, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1163, 40, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1164, 40, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1165, 40, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1166, 40, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1167, 40, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1168, 40, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1169, 40, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1170, 40, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1171, 40, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1172, 40, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1173, 40, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1174, 40, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1175, 40, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1176, 40, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1177, 40, 29, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1178, 40, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1179, 41, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1180, 41, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1181, 41, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1182, 41, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1183, 41, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1184, 41, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1185, 41, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1186, 41, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1187, 41, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1188, 41, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1189, 41, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1190, 41, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1191, 41, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1192, 41, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1193, 41, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1194, 41, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1195, 41, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1196, 41, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1197, 41, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1198, 41, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1199, 41, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1200, 41, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1201, 41, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1202, 41, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1203, 41, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1204, 41, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1205, 41, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1206, 41, 28, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1207, 41, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1208, 41, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1209, 42, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1210, 42, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1211, 42, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1212, 42, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1213, 42, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1214, 42, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1215, 42, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1216, 42, 8, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1217, 42, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1218, 42, 10, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1219, 42, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1220, 42, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1221, 42, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1222, 42, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1223, 42, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1224, 42, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1225, 42, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1226, 42, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1227, 42, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1228, 42, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1229, 42, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1230, 42, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1231, 42, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1232, 42, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1233, 42, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1234, 42, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1235, 42, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1236, 42, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1237, 42, 29, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1238, 42, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1239, 43, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1240, 43, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1241, 43, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1242, 43, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1243, 43, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1244, 43, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1245, 43, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1246, 43, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1247, 43, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1248, 43, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1249, 43, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1250, 43, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1251, 43, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1252, 43, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1253, 43, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1254, 43, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1255, 43, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1256, 43, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1257, 43, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1258, 43, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1259, 43, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1260, 43, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1261, 43, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1262, 43, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1263, 43, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1264, 43, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1265, 43, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1266, 43, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1267, 43, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1268, 43, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1269, 44, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1270, 44, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1271, 44, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1272, 44, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1273, 44, 5, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1274, 44, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1275, 44, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1276, 44, 8, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1277, 44, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1278, 44, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1279, 44, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1280, 44, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1281, 44, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1282, 44, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1283, 44, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1284, 44, 16, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1285, 44, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1286, 44, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1287, 44, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1288, 44, 20, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1289, 44, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1290, 44, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1291, 44, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1292, 44, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1293, 44, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1294, 44, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1295, 44, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1296, 44, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1297, 44, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1298, 44, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1299, 45, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1300, 45, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1301, 45, 3, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1302, 45, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1303, 45, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1304, 45, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1305, 45, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1306, 45, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1307, 45, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1308, 45, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1309, 45, 11, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1310, 45, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1311, 45, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1312, 45, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1313, 45, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1314, 45, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1315, 45, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1316, 45, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1317, 45, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1318, 45, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1319, 45, 21, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1320, 45, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1321, 45, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1322, 45, 24, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1323, 45, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1324, 45, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1325, 45, 27, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1326, 45, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1327, 45, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1328, 45, 30, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1329, 46, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1330, 46, 2, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1331, 46, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1332, 46, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1333, 46, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1334, 46, 6, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1335, 46, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1336, 46, 8, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1337, 46, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1338, 46, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1339, 46, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1340, 46, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1341, 46, 13, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1342, 46, 14, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1343, 46, 15, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1344, 46, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1345, 46, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1346, 46, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1347, 46, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1348, 46, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1349, 46, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1350, 46, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1351, 46, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1352, 46, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1353, 46, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1354, 46, 26, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1355, 46, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1356, 46, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1357, 46, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1358, 46, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1359, 47, 1, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1360, 47, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1361, 47, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1362, 47, 4, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1363, 47, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1364, 47, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1365, 47, 7, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1366, 47, 8, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1367, 47, 9, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1368, 47, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1369, 47, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1370, 47, 12, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1371, 47, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1372, 47, 14, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1373, 47, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1374, 47, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1375, 47, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1376, 47, 18, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1377, 47, 19, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1378, 47, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1379, 47, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1380, 47, 22, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1381, 47, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1382, 47, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1383, 47, 25, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1384, 47, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1385, 47, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1386, 47, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1387, 47, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1388, 47, 30, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1389, 48, 1, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1390, 48, 2, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1391, 48, 3, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1392, 48, 4, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1393, 48, 5, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1394, 48, 6, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1395, 48, 7, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1396, 48, 8, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1397, 48, 9, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1398, 48, 10, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1399, 48, 11, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1400, 48, 12, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1401, 48, 13, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1402, 48, 14, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1403, 48, 15, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1404, 48, 16, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1405, 48, 17, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1406, 48, 18, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1407, 48, 19, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1408, 48, 20, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1409, 48, 21, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1410, 48, 22, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1411, 48, 23, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1412, 48, 24, 1, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1413, 48, 25, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1414, 48, 26, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1415, 48, 27, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1416, 48, 28, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1417, 48, 29, 0, NULL)
GO
INSERT [dbo].[ROLL_CALL_BOOKS] ([RollCallBookId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1418, 48, 30, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[ROLL_CALL_BOOKS] OFF
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (214, N'P214', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (215, N'P215', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (216, N'P216', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (217, N'P217', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (218, N'P218', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (219, N'P219', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (220, N'P220', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (221, N'P221', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (223, N'P223', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (225, N'P225', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (227, N'P227', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (228, N'P228', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (229, N'P229', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[ROOMS] ([RoomId], [RoomCode], [CampusId], [CAP2acity], [Type], [Description]) VALUES (230, N'P230', 1, 30, N'Computer lab', NULL)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 1)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 2)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 3)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 4)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 5)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 6)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 7)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 8)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 9)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 10)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 11)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 12)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 13)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 14)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 15)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 16)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 17)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 18)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 19)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 20)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 21)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 22)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 23)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 24)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 25)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 26)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 27)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 28)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 29)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (1, 30)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 31)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 32)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 33)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 34)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 35)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 36)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 37)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 38)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 39)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 40)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 41)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 42)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 43)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 44)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 45)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 46)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 47)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 48)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 49)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 50)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 51)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 52)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 53)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 54)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 55)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 56)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 57)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (4, 58)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 59)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 60)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 61)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 62)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 63)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 64)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 65)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 66)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 67)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 68)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 69)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 70)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 71)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 72)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 73)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 74)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 75)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 76)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 77)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 78)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 79)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 80)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 81)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 82)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 83)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 84)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 85)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 86)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (5, 87)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 147)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 148)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 149)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 150)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 151)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 152)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 153)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 154)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 155)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 156)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 157)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 158)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 159)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 160)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 161)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 162)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 163)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 164)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 165)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 166)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 167)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 168)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 169)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 170)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 171)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 172)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 173)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 174)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 175)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (6, 176)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 88)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 89)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 90)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 91)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 92)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 93)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 94)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 95)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 96)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 97)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 98)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 99)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 100)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 101)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 102)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 103)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 104)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 105)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 106)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 107)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 108)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 109)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 110)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 111)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 112)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 113)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 114)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 115)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 116)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (7, 117)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 118)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 119)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 120)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 121)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 122)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 123)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 124)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 125)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 126)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 127)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 128)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 129)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 130)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 131)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 132)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 133)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 134)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 135)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 136)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 137)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 138)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 139)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 140)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 141)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 142)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 143)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 144)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 145)
GO
INSERT [dbo].[STUDENT_COURSE] ([CourseId], [StudentId]) VALUES (8, 146)
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (1, N'00257', N'Mão', N'Xuân', N'Đào')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (2, N'00462', N'Nam', N'Giang', N'Đặng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (3, N'00466', N'Quang', N'Ngọc', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (4, N'00599', N'Dũng', N'Ngọc', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (5, N'00610', N'Vũ', N'Anh', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (6, N'00640', N'Hải', N'Phú', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (7, N'00806', N'Linh', N'Ngọc Nhật', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (8, N'00901', N'Khánh', N'Hà', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (9, N'00918', N'Thắng', N'Việt', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (10, N'00922', N'Trình', N'Đức', N'Đào')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (11, N'00923', N'Hùng', N'Lâm', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (12, N'00957', N'Minh', N'Quang', N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (13, N'01069', N'Anh', N'Đức', N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (14, N'01152', N'Toàn', N'Đức', N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (15, N'01241', N'Khánh', N'Duy', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (16, N'01349', N'Hoàng', N'Danh', N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (17, N'01369', N'Thắng', N'Ngọc', N'Hồ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (18, N'01504', N'Dương', N'Ngọc', N'Lương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (19, N'01530', N'Sơn', N'Ngọc', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (20, N'01536', N'Hải', N'Tiến', N'Đinh')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (21, N'01541', N'Phương', N'Minh', N'Khuất')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (22, N'01589', N'Nam', N'Văn', N'Trương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (23, N'01619', N'Thắng', N'Quyết', N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (24, N'01648', N'Đức', N'Trọng', N'Trương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (25, N'01667', N'Dũng', N'Minh', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (26, N'01692', N'Nhân', N'Thị', N'Đặng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (27, N'01710', N'Thanh', N'Quang', N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (28, N'01764', N'Anh', N'Hoàng', N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (29, N'01777', N'Hiếu', N'Trung', N'Đoàn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (30, N'01929', N'Minh', N'Đức', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (31, N'00778', N'Tuấn', N'Viết Anh', N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (32, N'01073', N'An', N'Ngọc', N'Lương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (33, N'01137', N'Linh', N'Khánh', N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (34, N'01153', N'Thành', N'Minh', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (35, N'01252', N'Thạnh', N'Xuân', N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (36, N'01255', N'Bách', N'Tùng', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (37, N'01384', N'Huỳnh', N'Thế', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (38, N'01425', N'Thắng', N'Chiến', N'Đỗ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (39, N'01449', N'Thành', N'Thị Minh', N'Đào')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (40, N'01495', N'Bình', N'Thị', N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (41, N'01498', N'Hưng', N'Khánh', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (42, N'01537', N'Đông', N'Danh', N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (43, N'01548', N'Hạnh', N'Thu', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (44, N'01551', N'Hưng', N'Bảo', N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (45, N'01571', N'Trung', N'Việt', N'Dương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (46, N'01579', N'Linh', N'Việt', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (47, N'01581', N'Quý', N'Văn', N'Vương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (48, N'01598', N'Đức', N'Anh', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (49, N'01607', N'Mai', N'Thị Tuyết', N'Dương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (50, N'01640', N'Nghĩa', N'Trọng', N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (51, N'01738', N'Tươi', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (52, N'01751', N'Trung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (53, N'01779', N'Trung', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (54, N'01822', N'Trung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (55, N'01834', N'Tùng', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (56, N'01922', N'Mai', NULL, N'Tạ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (57, N'01939', N'Thịnh', NULL, N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (58, N'01945', N'Đức', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (59, N'00589', N'Tùng', NULL, N'Hồ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (60, N'00600', N'Đức', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (61, N'00855', N'Lộc', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (62, N'00873', N'Trung', NULL, N'Đặng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (63, N'01180', N'Minh', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (64, N'01291', N'Dương', NULL, N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (65, N'01312', N'Tuấn', NULL, N'Võ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (66, N'01372', N'Nam', NULL, N'Phùng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (67, N'01399', N'Hiếu', NULL, N'Chu')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (68, N'01447', N'Giang', NULL, N'Bùi')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (69, N'01499', N'Anh', NULL, N'Lưu')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (70, N'01522', N'Thu', NULL, N'Ngô')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (71, N'01529', N'Quân', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (72, N'01559', N'Đức', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (73, N'01603', N'Dung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (74, N'01724', N'Hiếu', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (75, N'01727', N'Hải', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (76, N'01750', N'Tuấn', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (77, N'01752', N'Long', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (78, N'01762', N'Anh', NULL, N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (79, N'01770', N'Tú', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (80, N'01780', N'Hải', NULL, N'Đặng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (81, N'01783', N'Minh', NULL, N'Trương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (82, N'01808', N'Dương', NULL, N'Phùng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (83, N'01874', N'Cường', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (84, N'01885', N'Đức', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (85, N'01888', N'Khôi', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (86, N'01913', N'Xuân', NULL, N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (87, N'60510', N'Huyền', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (88, N'00682', N'Vịnh', NULL, N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (89, N'00846', N'Linh', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (90, N'00936', N'Hiệp', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (91, N'01082', N'Nam', NULL, N'Võ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (92, N'01272', N'Quân', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (93, N'01278', N'Cường', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (94, N'01475', N'Vũ', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (95, N'01480', N'Dũng', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (96, N'01488', N'Tuấn', NULL, N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (97, N'01569', N'Chung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (98, N'01600', N'Thế', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (99, N'01627', N'Quân', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (100, N'01631', N'Nga', NULL, N'Phùng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (101, N'01646', N'Tùng', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (102, N'01657', N'Quân', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (103, N'01686', N'Quang', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (104, N'01687', N'Nhật', NULL, N'Dương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (105, N'01703', N'Đạt', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (106, N'01708', N'Tài', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (107, N'01719', N'Minh', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (108, N'01745', N'Cường', NULL, N'Nghiêm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (109, N'01754', N'Đạo', NULL, N'Bùi')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (110, N'01786', N'Tuấn', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (111, N'01802', N'Phụng', NULL, N'Ngô')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (112, N'01823', N'Ngân', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (113, N'01858', N'Ánh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (114, N'01880', N'Dũng', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (115, N'01899', N'Cường', NULL, N'Phan')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (116, N'01902', N'Việt', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (117, N'01930', N'Thủy', NULL, N'Dương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (118, N'00625', N'Quân', NULL, N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (119, N'00645', N'Trung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (120, N'00724', N'Long', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (121, N'00833', N'Tuấn', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (122, N'00866', N'Anh', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (123, N'01126', N'Hiếu', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (124, N'01164', N'Huy', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (125, N'01486', N'Trung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (126, N'01523', N'Trung', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (127, N'01526', N'Vương', NULL, N'Kiều')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (128, N'01566', N'Doanh', NULL, N'Đinh')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (129, N'01592', N'Xuyến', NULL, N'Vũ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (130, N'01621', N'Huy', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (131, N'01622', N'Oai', NULL, N'Đặng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (132, N'01636', N'Sơn', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (133, N'01652', N'Hùng', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (134, N'01662', N'Ly', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (135, N'01675', N'Hải', NULL, N'Phan')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (136, N'01681', N'Thắng', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (137, N'01682', N'Anh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (138, N'01735', N'Hằng', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (139, N'01785', N'Tú', NULL, N'Tô')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (140, N'01800', N'Anh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (141, N'01807', N'Quang', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (142, N'01825', N'Hoàng', NULL, N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (143, N'01835', N'Lợi', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (144, N'01889', N'Sơn', NULL, N'Lương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (145, N'01906', N'Tùng', NULL, N'Trịnh')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (146, N'01907', N'Cường', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (147, N'00444', N'Mạnh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (148, N'00797', N'Anh', NULL, N'Ngô')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (149, N'00844', N'Tú', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (150, N'00939', N'Vinh', NULL, N'Tô')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (151, N'01001', N'Hiếu', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (152, N'01005', N'Hoàng', NULL, N'Đào')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (153, N'01012', N'Hoàng', NULL, N'Trương')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (154, N'01142', N'Anh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (155, N'01204', N'Hà', NULL, N'Lê')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (156, N'01250', N'Linh', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (157, N'01339', N'Nam', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (158, N'01361', N'Vũ', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (159, N'01481', N'Hải', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (160, N'01482', N'Bách', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (161, N'01487', N'Tú', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (162, N'01496', N'Quang', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (163, N'01511', N'Thực', NULL, N'Đinh')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (164, N'01518', N'Vũ', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (165, N'01639', N'Lâm', NULL, N'Lưu')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (166, N'01655', N'Cường', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (167, N'01663', N'Đức', NULL, N'Chu')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (168, N'01677', N'Oanh', NULL, N'Đỗ')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (169, N'01696', N'Hoàng', NULL, N'Bùi')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (170, N'01734', N'Hưng', NULL, N'Giang')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (171, N'01827', N'Việt', NULL, N'Trần')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (172, N'01828', N'Tuấn', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (173, N'01855', N'Toán', NULL, N'Nguyễn')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (174, N'01884', N'Trọng', NULL, N'Hoàng')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (175, N'01952', N'Ngọc', NULL, N'Phạm')
GO
INSERT [dbo].[STUDENTS] ([StudentId], [Roll#], [FirstName], [MidName], [LastName]) VALUES (176, N'01955', N'Trang', NULL, N'Nguyễn')
GO
SET IDENTITY_INSERT [dbo].[SUBJECTS] ON 

GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (20, N'MA101', N'Advanced Mathematics 1', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (21, N'MA102', N'Advanced Mathematics 2', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (22, N'DM101', N'Discrete Mathematics 1', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (23, N'DM102', N'Discrete Mathematics 2', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (24, N'MA201', N'Probability and Statistics', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (25, N'CF100', N'Introduction to Computing', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (26, N'CF101', N'Programming Fundamental Using C', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (27, N'CF102', N'Object Oriented Programming Using C++', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (28, N'CF103', N'Data Structures and Algorithms Using Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (29, N'CF104-1', N'Operating Systems', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (30, N'CF105', N'Introduction to Databases', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (31, N'CF205', N'Java AP2plication Development', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (32, N'CF112', N'C# and .NET Technology', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (33, N'EN011', N'English 1 - Top Notch Fundamental', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (34, N'EN021', N'English 2 - Top Notch 1', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (35, N'EN031', N'English 3 - Top Notch 2', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (36, N'EN041', N'English 4 - Top Notch 3', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (37, N'EN051', N'English 5 - Summit 1', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (38, N'EB111', N'Business English 1 - Intelligent Business Elementa', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (39, N'EB121', N'Business English 2 - Intelligent Business Preinter', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (40, N'EB131', N'Business English 3 - Intelligent Business Intermed', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (41, N'JP111', N'JAP2anese 1 - Sơ cấp 1', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (42, N'JP112', N'JAP2anese 2 - Sơ cấp 2', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (43, N'JP113', N'JAP2anese 3 - Sơ cấp 3', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (44, N'JP114', N'JAP2anese 4 - Sơ cấp 4', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (45, N'EIT201', N'Ethics in Information Technology', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (46, N'SE101', N'Introduction to Software Engineering', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (47, N'SE213', N'Software Requirements', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (48, N'SE214', N'Software Quality Assurance and Testing', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (49, N'SS101', N'Business Communication', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (50, N'SS102', N'Working in Group', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (51, N'EN061', N'English 6 - Summit 2 (lite)', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (52, N'SE212', N'Human Computer Interface', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (53, N'SE211', N'Software Construction', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (54, N'BD201', N'Soccer', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (55, N'CL201', N'Badminton', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (56, N'VO101', N'Vovinam 1', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (57, N'VO102', N'Vovinam 2', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (58, N'VO103', N'Vovinam 3', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (59, N'VO104', N'Vovinam 4', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (60, N'CF104-2', N'Network', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (61, N'JP115', N'JAP2anese 5 - Sơ cấp 5', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (62, N'HS111', N'Maxism - Leninism 1', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (63, N'GC2-SQL SDO', N'Working with SQL Server Database Objects', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (64, N'COMP1302', N'Database Design and Implementation', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (65, N'COMP1303', N'Distributed Information Systems', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (66, N'COMP1305', N'IT Project and Quality Management', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (67, N'COMP1562', N'Operating Systems (Topup)', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (68, N'COMP1304', N'Information Systems Engineering', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (69, N'JP211', N'JAP2anese 6 - Trung cấp 1', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (70, N'SE216', N'IT Project Management', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (71, N'CF206', N'C# and .NET Technology OLD', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (72, N'EN062', N'English 6 - Summit 2', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (73, N'AP2tech1', N'AP2tech semester 1', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (74, N'NK', N'Extra curriculum activities', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (75, N'GC1-C', N'Elementary Programming with C', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (76, N'GC1-CF', N'Computer Fundamentals', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (77, N'GC1-HDJ', N'HTML, DHTML & JavaScript', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (78, N'GC1-PRJ', N'Project SEM I', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (79, N'GC1-DW', N'Dream-weaver 8.0', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (80, N'EN161', N'IELTS graduation', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (81, N'HS112', N'Maxism - Leninism 2', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (82, N'ES301', N'Digital Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (83, N'SE315', N'Software Architecture and Design', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (84, N'ES311', N'Embedded System Hardware', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (85, N'IS301', N'IT AP2plication in Enterprise', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (86, N'IS311', N'Principles of Accounting and Finance', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (87, N'IS312', N'E-commerce', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (88, N'MA101-2', N'Advanced Mathematics for Business', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (89, N'CF100-2', N'Introduction to Computing for Business', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (90, N'MG101', N'Introduction to Management', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (91, N'SS102-2', N'Working in Group for Business', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (92, N'EN151', N'IELTS Foundation', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (93, N'EB112', N'Business English 1 - Market Leader Elementary', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (94, N'EN162', N'TOEIC', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (95, N'COMP1564', N'Systems Programming', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (96, N'COMP1158', N'Systems Building 2', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (97, N'COMP1303', N'Distributed Information Systems', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (98, N'AW', N'Academic Writing', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (99, N'GC1-RDBMS', N'RDBMS and Database Management', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (100, N'GC1-Java', N'Learn Java by Example', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (101, N'GC1-Project', N'Project Semester 1', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (102, N'EB141', N'Business English 4 - Intelligent Business Upper', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (103, N'CF001', N'Learning to program with Alice', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (104, N'EN001', N'Advanced English Study Skills', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (105, N'CF110', N'Core Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (106, N'SS201', N'Business Communication', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (107, N'OB201', N'Organizational Behavior', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (108, N'ECO201', N'Basic Micro Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (109, N'ECO202', N'Basic Macro Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (110, N'EB221', N'Business English 2 - Market Leader Preintermediate', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (111, N'SE300', N'SW Entrepreneurship', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (112, N'ES312', N'Embeded Software Development', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (113, N'ES313', N'Digital Signal Processing', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (114, N'JP221', N'JAP2anese 7 - Trung cấp 2', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (115, N'HS121', N'Ho Chi Minh Ideology', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (116, N'IS321', N'Advanced XML', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (117, N'IS322', N'Advanced Database', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (118, N'CF111', N'Advanced Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (119, N'GC2-ADVJ', N'A Guide to Advanced Java', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (120, N'GC2-DJava', N'Distributed Computing in Java', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (121, N'GC2-SJava', N'Working with Database and Security in Java', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (122, N'GC2-XML', N'XML by Example', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (123, N'GC2-C#', N'Programming in C#', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (124, N'GC2-ADV C#', N'Advanced Programming in C#', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (125, N'GC2-ePRJ', N'eProject (Java)', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (126, N'COMP1510', N'AP2plication Development for Mobile Devices', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (127, N'TVA1', N'Tiếng Việt trình độ A ', 13)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (128, N'SE400-IS', N'Đồ án tốt nghiệp chuyên ngành IS', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (129, N'HS131', N'Revolutionary way of Vietnam Communist Party', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (130, N'IS323', N'Data Warehousing Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (131, N'IS313', N'ERP Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (132, N'ES321', N'Smart card introduction', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (133, N'ES322', N'Công nghệ không dây và giao tiếp di động', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (134, N'EB331', N'Business English 3, MKL -Intermediate', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (135, N'CH311', N'Chinese 1', 2)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (136, N'MA301', N'Statistics and Data Processing', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (137, N'AC301', N'Accounting Principles', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (138, N'MK301', N'Marketing Principles', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (139, N'SE400-ES', N'Đồ án tốt nghiệp chuyên ngành ES', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (140, N'JMS', N'JAP2an Monozukuri and Software development', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (141, NULL, N'test en 5', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (142, N'Test001', N'test add subject', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (143, N'CH412', N'Chinese 2', 2)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (144, N'FN401', N'Moneytary and Global Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (145, N'LW101', N'Business Law fundementals', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (146, N'FN402', N'Corporate Finance', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (147, N'SS401', N'Critical Thinking and Problem Solving', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (148, N'EB441', N'Business English MKL Upper', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (149, N'GC3-WFC#', N'Windows Forms With C#', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (150, N'GC3-ASP', N'Beginning ASP.NET', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (151, N'GC3-DHA', N'DataBase Handling in ASP.NET', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (152, N'GC3-AASP', N'Avanced Features of ASP.NET', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (153, N'GC3-PWSN', N'Programming Web Services in .NET', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (154, N'GC3-AFFS', N'Advanced Features of SQL Server 2005', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (155, N'GC1-C', N'Programming in C', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (156, N'JPS111', N'JAP2anese 1 - Sơ cấp 1', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (157, N'ENM301', N'Business English 3; MKL -Intermediate', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (158, N'ACC101', N'Accounting Principles', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (159, N'ACC191', N'Principles of Accounting and Finance', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (160, N'CHN111', N'Chinese 1', 2)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (161, N'CHN121', N'Chinese 2', 2)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (162, N'CSD201', N'Data Structures and Algorithms Using Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (163, N'CSI101', N'Introduction to Computing', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (164, N'CSI102', N'Introduction to Computing for Business', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (165, N'DBD301', N'Advanced Database', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (166, N'DBI201', N'Introduction to Databases', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (167, N'DBW301', N'Data Warehousing Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (168, N'DGT201', N'Digital Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (169, N'DGT301', N'Digital Signal Processing', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (170, N'ECO111', N'Basic Micro Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (171, N'ECO121', N'Basic Macro Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (172, N'ENI101', N'Business English 1 - Intelligent Business Elementa', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (173, N'ENI201', N'Business English 2 - Intelligent Business Preinter', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (174, N'ENI301', N'Business English 3 - Intelligent Business Intermed', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (175, N'ENI401', N'Business English 4 - Intelligent Business Upper', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (176, N'ENL101', N'IELTS Foundation', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (177, N'ENL201', N'Advanced Academic English', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (178, N'ENM101', N'Business English 1 - Market Leader Elementary', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (179, N'ENM201', N'Business English 2 - Market Leader Preintermediate', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (180, N'ENM411', N'Business English MKL Upper', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (181, N'ENO201', N'Advanced Practical English', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (182, N'ENT001', N'English 1 - Top Notch Fundamental', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (183, N'ENT101', N'English 2 - Top Notch 1', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (184, N'ENT201', N'English 3 - Top Notch 2', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (185, N'ENT301', N'English 4 - Top Notch 3', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (186, N'ENT401', N'English 5 - Summit 1', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (187, N'ENT501', N'English 6 - Summit 2', 5)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (188, N'ESH201', N'Embedded System Hardware', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (189, N'ESH391', N'Smart card introduction', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (190, N'ESS301', N'Embeded Software Development', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (191, N'ETR402', N'SW Entrepreneurship', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (192, N'FIN201', N'Moneytary and Global Economics', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (193, N'FIN202', N'Corporate Finance', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (194, N'HCI201', N'Human Computer Interface', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (195, N'HCM201', N'Ho Chi Minh Ideology', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (196, N'ISC301', N'E-commerce', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (197, N'ISM301', N'ERP Fundamentals', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (198, N'ITA201', N'IT AP2plication in Enterprise', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (199, N'ITE301', N'Ethics in Information Technology', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (200, N'JPS121', N'JAP2anese 2', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (201, N'JPS131', N'JAP2anese 3', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (202, N'JPS141', N'JAP2anese 4', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (203, N'JPS151', N'JAP2anese 5', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (204, N'JPS211', N'JAP2anese 6', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (205, N'JPS221', N'JAP2anese 7', 8)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (206, N'LAW101', N'Business Law fundementals', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (207, N'MAA101', N'Advanced Mathematics 2', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (208, N'MAC101', N'Advanced Mathematics 1', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (209, N'MAC102', N'Advanced Mathematics for Business', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (210, N'MAD111', N'Discrete Mathematics 1', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (211, N'MAD121', N'Discrete Mathematics 2', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (212, N'MAS201', N'Statistics and Data Processing', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (213, N'MAS291', N'Probability & Statistics', 9)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (214, N'MBS391', N'Wireless and Mobile communication', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (215, N'MGT101', N'Introduction to Management', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (216, N'MKT101', N'Marketing Principles', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (217, N'MLN101', N'Maxism - Leninism', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (218, N'MLN121', N'Maxism - Leninism 2', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (219, N'NWC201', N'Network', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (220, N'OBE101', N'Organizational Behavior', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (221, N'OSG201', N'Operating Systems', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (222, N'PRF191', N'Programming Fundamental Using C', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (223, N'PRJ101', N'Core Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (224, N'PRJ201', N'Advanced Java', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (225, N'PRN291', N'C# and .NET Technology', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (226, N'PRO001', N'Learning to program with Alice', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (227, N'PRO191', N'Object Oriented Programming Using C++', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (228, N'PRX301', N'Advanced XML', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (229, N'SWP492', N'CAP2tone project - Embeded Software', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (230, N'SWP491', N'CAP2tone project - Information System', 7)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (231, N'SSC001', N'Business Communication', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (232, N'SSC101', N'Business Communication', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (233, N'SSG001', N'Working in Group', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (234, N'SSG101', N'Working in Group for Business', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (235, N'SSP291', N'Critical Thinking and Problem Solving', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (236, N'SWC201', N'Software Construction', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (237, N'SWD391', N'Software Architecture and Design', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (238, N'SWE101', N'Introduction to Software Engineering', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (239, N'SWM301', N'IT Project Management', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (240, N'SWQ391', N'Software Quality Assurance and Testing', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (241, N'SWR301', N'Software Requirements', 12)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (242, N'VNR201', N'Revolutionary way of Vietnam Communist Party', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (243, N'VOV111', N'Vovinam 1', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (244, N'VOV121', N'Vovinam 2', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (245, N'VOV131', N'Vovinam 3', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (246, N'VOV141', N'Vovinam 4', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (247, N'SSM201', N'Management Skills', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (248, N'RLTT', N'Specific Collective Training', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (249, N'CF201', N'Object Oriented Programming Using C++', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (250, N'CF104', N'Operating Systems and Network', 3)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (251, N'GC1-BDWS', N'Building Dynamic Website', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (252, N'GC1-DW8', N'Dreamweaver 8', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (253, N'GC1-MSSQL', N'Database Development in SQL Server', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (254, N'GC1-Project i10', N'Project Semester 1 i10', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (255, N'GC1-CF i10', N'Computer Fundamentals i10', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (256, N'GC3-ASP', N'Beginning ASP.Net', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (257, N'GC3-DHA', N'Database Handling in ASP.Net', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (258, N'GC3-AASP', N'Advanced Features of ASP.Net', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (259, N'GC3-PWSN', N'Programming Web Services in .Net', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (260, N'GC3-eProject', N'Project Semester 3', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (261, N'COV111', N'Chess 1', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (262, N'COV121', N'Chess 2', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (263, N'COV131', N'Chess 3', 10)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (264, N'GC3-AFSS', N'Advanced Features of SQL Server 2005', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (265, N'MNL101', N'Maxism - Leninism 2', 11)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (266, N'SSN301', N'Negotiation and Conflict Solving Skills', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (267, N'ENM421', N'Upper-Intermediate 2 - Business English 2', 4)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (268, N'CHN131', N'Chinese 3', 2)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (269, N'ACC302', N'Managerial Accounting ', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (270, N'FIN302', N'Financial Statement Analysis', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (271, N'FIN303', N'Advanced corporate finance', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (272, N'MKT201', N'Consumer Behavior', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (273, N'MKT202', N'Service Marketing Management', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (274, N'MKT301', N'Marketing Research', 1)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (275, N'GC2-XML i10', N'XML Simplified', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (276, N'GC2-JP1', N'Java Programming I', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (277, N'GC2-CC1', N'Introduction to Cloud Computing', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (278, N'GC2-JP2', N'Java Programming II', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (279, N'GC2-AJV1', N'Advanced Java Programming I', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (280, N'GC2-AJV2', N'Advanced Java Programming II', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (281, N'GC2-PCS', N'Programming in C#', 6)
GO
INSERT [dbo].[SUBJECTS] ([SubjectId], [SubjectCode], [SubjectName], [DepartmentId]) VALUES (282, N'GC2-EPJ i10', N'Eproject Semester 2 i10', 6)
GO
SET IDENTITY_INSERT [dbo].[SUBJECTS] OFF
GO
ALTER TABLE [dbo].[COURSE_SCHEDULES]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_SCHEDULES_COURSES] FOREIGN KEY([CourseId])
REFERENCES [dbo].[COURSES] ([CourseId])
GO
ALTER TABLE [dbo].[COURSE_SCHEDULES] CHECK CONSTRAINT [FK_COURSE_SCHEDULES_COURSES]
GO
ALTER TABLE [dbo].[COURSE_SCHEDULES]  WITH CHECK ADD  CONSTRAINT [FK_COURSE_SCHEDULES_ROOMS] FOREIGN KEY([RoomId])
REFERENCES [dbo].[ROOMS] ([RoomId])
GO
ALTER TABLE [dbo].[COURSE_SCHEDULES] CHECK CONSTRAINT [FK_COURSE_SCHEDULES_ROOMS]
GO
ALTER TABLE [dbo].[COURSES]  WITH CHECK ADD  CONSTRAINT [FK_COURSES_INSTRUCTORS] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[INSTRUCTORS] ([InstructorId])
GO
ALTER TABLE [dbo].[COURSES] CHECK CONSTRAINT [FK_COURSES_INSTRUCTORS]
GO
ALTER TABLE [dbo].[COURSES]  WITH CHECK ADD  CONSTRAINT [FK_COURSES_SUBJECTS] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[SUBJECTS] ([SubjectId])
GO
ALTER TABLE [dbo].[COURSES] CHECK CONSTRAINT [FK_COURSES_SUBJECTS]
GO
ALTER TABLE [dbo].[INSTRUCTORS]  WITH CHECK ADD  CONSTRAINT [FK_INSTRUCTORS_DEPARTMENTS] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DEPARTMENTS] ([DepartmentId])
GO
ALTER TABLE [dbo].[INSTRUCTORS] CHECK CONSTRAINT [FK_INSTRUCTORS_DEPARTMENTS]
GO
ALTER TABLE [dbo].[ROLL_CALL_BOOKS]  WITH CHECK ADD  CONSTRAINT [FK_ROLL_CALL_BOOKS_COURSE_SCHEDULES] FOREIGN KEY([TeachingScheduleId])
REFERENCES [dbo].[COURSE_SCHEDULES] ([TeachingScheduleId])
GO
ALTER TABLE [dbo].[ROLL_CALL_BOOKS] CHECK CONSTRAINT [FK_ROLL_CALL_BOOKS_COURSE_SCHEDULES]
GO
ALTER TABLE [dbo].[ROLL_CALL_BOOKS]  WITH CHECK ADD  CONSTRAINT [FK_ROLL_CALL_BOOKS_STUDENTS] FOREIGN KEY([StudentId])
REFERENCES [dbo].[STUDENTS] ([StudentId])
GO
ALTER TABLE [dbo].[ROLL_CALL_BOOKS] CHECK CONSTRAINT [FK_ROLL_CALL_BOOKS_STUDENTS]
GO
ALTER TABLE [dbo].[STUDENT_COURSE]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_COURSE_COURSES] FOREIGN KEY([CourseId])
REFERENCES [dbo].[COURSES] ([CourseId])
GO
ALTER TABLE [dbo].[STUDENT_COURSE] CHECK CONSTRAINT [FK_STUDENT_COURSE_COURSES]
GO
ALTER TABLE [dbo].[STUDENT_COURSE]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_COURSE_STUDENTS] FOREIGN KEY([StudentId])
REFERENCES [dbo].[STUDENTS] ([StudentId])
GO
ALTER TABLE [dbo].[STUDENT_COURSE] CHECK CONSTRAINT [FK_STUDENT_COURSE_STUDENTS]
GO
ALTER TABLE [dbo].[SUBJECTS]  WITH CHECK ADD  CONSTRAINT [FK_SUBJECTS_DEPARTMENTS] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[DEPARTMENTS] ([DepartmentId])
GO
ALTER TABLE [dbo].[SUBJECTS] CHECK CONSTRAINT [FK_SUBJECTS_DEPARTMENTS]
GO