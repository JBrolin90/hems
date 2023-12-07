CREATE PROCEDURE spMonthlyInvoicesTotal 
	@Year int, 
	@Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	  @Year AS [Year], @Month AS [Month]
	, SUM(DurationPlanned) AS TotalHours
	, SUM(DurationPlanned*PricePerHour) AS Price
	, SUM(IIF(Schedules.RUT=1, DurationPlanned*PricePerHour*0.8, DurationPlanned*PricePerHour )) AS PricewoVAT
	, SUM(IIF(Schedules.RUT=1, DurationPlanned*PricePerHour*0.2, DurationPlanned*PricePerHour*0.25 )) AS VAT
	, SUM(IIF(Schedules.RUT=1, DurationPlanned*PricePerHour, DurationPlanned*PricePerHour*1.25 )) AS PriceVAT
	FROM Schedules
	WHERE Year(StartTimePlanned) = @Year
	AND Month(StartTimePlanned) = @Month
END

GO

