USE [master]
GO
/****** Object:  Database [CandidateDb]    Script Date: 6/28/2018 9:44:10 AM ******/
CREATE DATABASE [CandidateDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CandidateDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CandidateDb.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CandidateDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CandidateDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CandidateDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CandidateDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CandidateDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CandidateDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CandidateDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CandidateDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CandidateDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CandidateDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CandidateDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CandidateDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CandidateDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CandidateDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CandidateDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CandidateDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CandidateDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CandidateDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CandidateDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CandidateDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CandidateDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CandidateDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CandidateDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CandidateDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CandidateDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CandidateDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CandidateDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CandidateDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CandidateDb] SET  MULTI_USER 
GO
ALTER DATABASE [CandidateDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CandidateDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CandidateDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CandidateDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CandidateDb]
GO
/****** Object:  Table [dbo].[AppEducation]    Script Date: 6/28/2018 9:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppEducation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Examid] [int] NOT NULL,
	[EduGroup] [varchar](max) NOT NULL,
	[Board] [varchar](max) NOT NULL,
	[Grade] [varchar](50) NOT NULL,
	[PassYearId] [int] NOT NULL,
	[ApplicantId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ApplicantDetaiels]    Script Date: 6/28/2018 9:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantDetaiels](
	[Id] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicantExt]    Script Date: 6/28/2018 9:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantExt](
	[Id] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ApplicantMain]    Script Date: 6/28/2018 9:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApplicantMain](
	[AppId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NOT NULL,
	[FName] [varchar](200) NOT NULL,
	[MName] [varchar](200) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Mobile] [varchar](50) NOT NULL,
	[NID] [varchar](50) NOT NULL,
	[ReligionId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
	[MaritalId] [int] NOT NULL,
	[BloodId] [int] NOT NULL,
	[DistId] [int] NOT NULL,
	[ThanaId] [int] NOT NULL,
	[DivissitionId] [int] NOT NULL,
	[QuotaId] [int] NOT NULL,
	[Pic] [image] NOT NULL,
	[Sig] [image] NOT NULL,
	[PreAddressId] [int] NOT NULL,
	[ParAddressId] [int] NOT NULL,
	[AppStatusId] [varchar](50) NOT NULL,
	[Applidate] [date] NOT NULL,
	[AppTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ApplicantMain] PRIMARY KEY CLUSTERED 
(
	[AppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blood]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blood](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Blood] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[D_code] [float] NULL,
	[Dist] [nvarchar](255) NULL,
	[Divission] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exam]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exam](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Edu_Classes] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExtraQualification]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExtraQualification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Extra_Qualification] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Gen] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PassingYear]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PassingYear](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PassingYear] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermanentAddress]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PermanentAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Permanet_Basa] [varchar](max) NOT NULL,
	[Permanet_Gram] [varchar](max) NOT NULL,
	[Permanet_Dis] [int] NOT NULL,
	[Permanet_Thana] [int] NOT NULL,
	[Permanet_Union] [varchar](200) NOT NULL,
	[Permanent_Dakgor] [varchar](200) NOT NULL,
	[Permanet_PostCode] [varchar](50) NULL,
	[AppLicantId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Post] [varchar](200) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PresentAddress]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PresentAddress](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Present_Basa] [varchar](max) NOT NULL,
	[Present_Gram] [varchar](max) NOT NULL,
	[Present_Dis] [int] NOT NULL,
	[Present_Thana] [int] NOT NULL,
	[Present_Union] [varchar](200) NOT NULL,
	[Present_Dakgor] [varchar](200) NOT NULL,
	[Present_PostCode] [varchar](50) NULL,
	[ApplicantId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProfesstionalCertificate]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProfesstionalCertificate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Professitional_Certificate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quota]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Quota](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quota] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Religion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Religion] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Thana]    Script Date: 6/28/2018 9:44:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Thana](
	[Id] [int] NOT NULL,
	[ThanaCode] [int] NOT NULL,
	[Thana] [varchar](200) NOT NULL,
	[D_code] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AppEducation]  WITH CHECK ADD  CONSTRAINT [FK_AppEducation_ApplicantMain] FOREIGN KEY([PassYearId])
REFERENCES [dbo].[PassingYear] ([Id])
GO
ALTER TABLE [dbo].[AppEducation] CHECK CONSTRAINT [FK_AppEducation_ApplicantMain]
GO
ALTER TABLE [dbo].[ApplicantMain]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantMain_ApplicantMain] FOREIGN KEY([AppId])
REFERENCES [dbo].[ApplicantMain] ([AppId])
GO
ALTER TABLE [dbo].[ApplicantMain] CHECK CONSTRAINT [FK_ApplicantMain_ApplicantMain]
GO
USE [master]
GO
ALTER DATABASE [CandidateDb] SET  READ_WRITE 
GO
