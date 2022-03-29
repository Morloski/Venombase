USE [VenomBase]
GO

/****** Object:  StoredProcedure [dbo].[WhereLocated]    Script Date: 3/28/2022 7:41:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Madison 
-- Create date: 2/3/2022
-- Description:	Allows you to add spotted reptiles to database
-- =============================================
ALTER   PROCEDURE [dbo].[WhereLocated]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@Location nvarchar(50),
	@Date Date,
	@Species nvarchar(50)
AS BEGIN
	
	INSERT INTO 
		dbo.SnakeSpotted (FirstName, LastName, Location, Date, Species)
	VALUES 
		(@FirstName, @LastName, @Location, @Date, @Species)

	SELECT 
		'Spotting added Sucessfully' as message
END
GO


