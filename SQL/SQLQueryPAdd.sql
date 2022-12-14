USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[Product_Add]    Script Date: 13/9/2022 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Product_Add]
	-- Add the parameters for the stored procedure here
	@UserId int,
	@CategoryId int, 
	@Description varchar (70) = null,
	@Featured tinyint,
	@NameImage varchar (70) = null,
	@Price money,
	@Promotion varchar (70) = null,
	@State tinyint,
	@Title varchar (70),
	@Subtitle varchar (70) = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Products]
           ([Id_Categorie_FK]
           ,[Id_user_FK]
           ,[State]
           ,[Title]
           ,[Subtitle]
           ,[Description]
           ,[Name_Image]
           ,[CreatedOn]
           ,[Price]
           ,[Featured]
           ,[Promotion])
     VALUES
           (@CategoryId
           ,@UserId
           ,@State
           ,@Title
           ,@SubTitle
           ,@Description
		   ,@NameImage
           ,SYSDATETIME()
           ,@Price 
		   ,@Featured
           ,@Promotion)

END
RETURN 1

