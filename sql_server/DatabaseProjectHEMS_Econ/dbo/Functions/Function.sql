CREATE FUNCTION [dbo].[Function]
(
)
RETURNS TABLE
AS
RETURN
(
 SELECT TagValue AS Text, [index] AS OBIndex, TagNumerical AS OBFactor FROM Settings 
 WHERE Tag = 'OB'
)

GO

