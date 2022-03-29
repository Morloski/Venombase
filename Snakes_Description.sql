USE [VenomBase]
GO

/****** Object:  StoredProcedure [dbo].[SnakeandDescription]    Script Date: 3/28/2022 8:10:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [dbo].[SnakeandDescription]
AS
/******************************************************************************
* Description: Pulls Snake Names and their description.
* -----------------------------------------------------------------------------
* Date |Author |Reason
* -----------------------------------------------------------------------------
* 02/23/2022 Madison Orloski Initial Release
*******************************************************************************/
BEGIN
SET NOCOUNT ON;
Select C.SnakeColor, S.SnakeName, S.ScientificName, A.Length, A.Description
From dbo.Color AS C
JOIN dbo.SnakeFeatureColor AS F ON C.ColorID=F.ColorID
JOIN dbo.Snakes As S ON s.SnakeID=F.SnakeID
JOIN dbo.Features AS A On F.FeatureID=A.FeatureID
END;
GO


