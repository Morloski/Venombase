USE [VenomBase]
GO

/****** Object:  StoredProcedure [dbo].[IllinoisSnakes]    Script Date: 3/28/2022 8:13:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[IllinoisSnakes]
AS
/******************************************************************************
* Description: pulls up missouri Snakes
* -----------------------------------------------------------------------------
* 03/04/22 |Madison Orloski |Pulls up Illinois Snakes|
*******************************************************************************/
BEGIN
SET NOCOUNT ON;
Select SN.SnakeName
From dbo.Snakes AS SN
JOIN dbo.SnakesStates AS SS On SN.SnakeID=SS.SnakeID
JOIN dbo.States as ST ON ST.StateID=SS.StateID
WHERE SS.StateID=13
END;
GO


