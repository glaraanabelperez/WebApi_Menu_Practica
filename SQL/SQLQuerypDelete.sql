USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[Product_Delete]    Script Date: 11/9/2022 08:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Product_Delete]
	-- Add the parameters for the stored procedure here
	@ProductId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   Delete from Products WHERE [Id_Product] = @ProductId
RETURN 0;

END
