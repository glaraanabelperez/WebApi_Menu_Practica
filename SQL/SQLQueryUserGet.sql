USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[User_Add]    Script Date: 13/9/2022 12:04:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[User_Get]
	-- Add the parameters for the stored procedure here
	  @UserId int 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Users where [Id_User]=@UserId

	RETURN 0;

END
