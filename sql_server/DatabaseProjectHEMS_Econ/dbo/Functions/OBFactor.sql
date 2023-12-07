CREATE FUNCTION [dbo].[OBFactor]
(
	@OBindex int
)
RETURNS real
AS
BEGIN
	RETURN (SELECT TagNumerical FROM Settings
		WHERE Tag = 'OB'
		AND [index] = @OBindex)
END

GO

