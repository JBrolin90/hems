CREATE FUNCTION [dbo].[TimeStamp]
(
	@date datetime
	
)
RETURNS varchar(5)
AS
BEGIN
	RETURN CONVERT(Varchar(2),DATEPART(hh,@date)) + ':' + CONVERT(Varchar(2),DATEPART(mi,@date))
END

GO

