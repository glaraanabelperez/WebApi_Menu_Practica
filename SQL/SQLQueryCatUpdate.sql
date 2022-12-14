USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[Category_Update]    Script Date: 12/9/2022 15:36:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Category_Update]
	-- Add the parameters for the stored procedure here
	   @UserId int
	  ,@CategoryId int
      ,@Description varchar (70)
   	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   UPDATE Categories SET 
					   [Description] = @Description
			WHERE  [Id_user_FK]= @UserId and [Id_Category]=@CategoryId
RETURN 0;
END
