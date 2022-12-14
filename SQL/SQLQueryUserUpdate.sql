USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 13/9/2022 16:27:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[User_Update]
	-- Add the parameters for the stored procedure here
	   @UserId int
	  ,@Business_Name varchar (70) =null
      ,@Slogan varchar (70) =null
      ,@User_email nvarchar (30)
      ,@Password varchar (70) =null
      ,@Phone int =null
      ,@Direction  varchar (100) =null
      ,@Ig varchar (70) =null
      ,@Facebook varchar (70) =null
      ,@Logo varchar (70) =null
      ,@OrdersWhatsapp tinyint
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT on;
	DECLARE	@return_value int=0

    -- Insert statements for procedure here
	if((select [Id_User] from Users where [Id_User]=@UserId) is not null) 
	begin
		
		UPDATE Users SET 
					   [Business_Name] =  COALESCE(@Business_Name, Business_Name)
					  ,[Slogan] =  COALESCE(@Slogan, Slogan)
					  ,[user_email] =  COALESCE(@User_email, User_email)
					  ,[Password] =  COALESCE(@Password,[Password])
					  ,[Phone] =  COALESCE(@Phone,Phone)
					  ,[Direction] = COALESCE(@Direction,Direction)
					  ,[Ig] =  COALESCE(@Ig,Ig)
					  ,[Facebook] =   COALESCE(@Facebook,Facebook)
					  ,[Logo] =  COALESCE(@Logo,Logo)
					  , [Orders_Whatsapp]=  COALESCE(@OrdersWhatsapp,[Orders_Whatsapp])
			WHERE  [Id_User]= @UserId
			SELECT	'Return Value' = @return_value
	end
	else begin return -3 end
	   
END
