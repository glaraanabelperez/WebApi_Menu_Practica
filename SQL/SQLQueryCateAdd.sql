USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[Category_Add]    Script Date: 12/9/2022 15:36:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Category_Add]
	-- Add the parameters for the stored procedure here
	  @UserId int
      ,@Description varchar (70)
    
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].Categories
           ([Id_user_FK]
           ,[Description]
           )
     VALUES
           (	  
			   @UserId
           ,@Description
		   )

		   RETURN 0;

END
