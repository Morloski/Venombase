USE [VenomBase]
GO

/****** Object:  StoredProcedure [dbo].[SnakeandColors]    Script Date: 3/28/2022 8:16:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[SnakeandColors]
AS
/******************************************************************************
* Description: Pulls up Snakes and Color
* -----------------------------------------------------------------------------
* Date |Author |Reason
* -----------------------------------------------------------------------------
* 02/23/2022 Madison Orloski Initial Release
*******************************************************************************/
BEGIN
SET NOCOUNT ON;
Select C.SnakeColor, S.SnakeName
From dbo.Color AS C
JOIN dbo.SnakeFeatureColor AS F ON C.ColorID=F.ColorID
JOIN dbo.Snakes As S ON s.SnakeID=F.SnakeID
END;
GO


