USE [Menu_Practica]
GO
/****** Object:  StoredProcedure [dbo].[Product_Update]    Script Date: 13/9/2022 13:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Product_Update]
	-- Add the parameters for the stored procedure here
	@ProductId int,
	@UserId int,
	@CategoryId int, 
	@Description varchar (70),
	@Featured tinyint,
	@NameImage varchar (70),
	@Price money,
	@Promotion varchar (70),
	@State tinyint,
	@Title varchar (70),
	@Subtitle varchar (70)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
		if((select [ProductId] from Products where ProductId=@ProductId) is not null)
		begin
			UPDATE Products SET 
						   [CategoryId_FK] = @CategoryId
						  ,[UserId_FK] = @UserId
						  ,[State] = @State
						  ,[Title] = @Title
						  ,[Subtitle] = @SubTitle
						  ,[Description] = @Description
						  ,[NameImage] = @NameImage
						  ,[CreatedOn] = SYSDATETIME()
						  ,[Price] = @Price
						  ,[Featured] = @Featured
						  ,[Promotion] = @Promotion			
				WHERE  [ProductId]= @ProductId

		end
		else begin return -2 end
    -- Insert statements for procedure here
	   
END
