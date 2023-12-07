-- =============================================
-- Author:		Joachim Brolin
-- Create date: 2023-08-30
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.CustomerInvoices 
	-- Add the parameters for the stored procedure here
	@Customer int,
	@Year int, 
	@Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SUM(durationPlanned*PricePerHour) AS [Amount], RUT, ROT
	FROM dbo.Schedules
	WHERE CustomerID = @Customer
	AND Year(StartTimePlanned) = @Year
	AND Month(StartTimePlanned) = @Month
	GROUP BY RUT, ROT
END

GO

