USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[User_Add]    Script Date: 13/9/2022 12:34:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[User_Add]
	-- Add the parameters for the stored procedure here
	  @Business_Name varchar (70)= null
      ,@Slogan varchar (70) = null
      ,@User_email nvarchar (30)
      ,@Password varchar (70) 
      ,@Phone int = null
      ,@Direction  varchar (100)  = null
      ,@Ig varchar (70) = null
      ,@Facebook varchar (70) = null
      ,@Logo varchar (70) = null
      ,@OrdersWhatsapp tinyint = null
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Users]
           ([Business_Name]
           ,[Slogan]
           ,[user_email]
           ,[Password]
           ,[Phone]
           ,[Direction]
           ,[Ig]
           ,[Facebook]
           ,[Logo]
           ,[Orders_Whatsapp])
     VALUES
           (	  
			   @Business_Name 
			  ,@Slogan 
			  ,@User_email 
			  ,@Password 
			  ,@Phone 
			  ,@Direction   
			  ,@Ig 
			  ,@Facebook 
			  ,@Logo 
			  ,@OrdersWhatsapp 
		   )

		   RETURN 0;

END
