USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[User_Update]    Script Date: 13/9/2022 12:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[User_Delete]
	-- Add the parameters for the stored procedure here
	   @UserId int
	  
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if((select [Id_User] from Users where [Id_User]=@UserId) is not null) 
	begin
	delete from Users WHERE [Id_User] = @UserId
	end
	else begin return -2 end
	   
END
