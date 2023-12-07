CREATE FUNCTION [dbo].[InvoiceItems]
(
	@Year int,
	@Month int,
	@CustomerId int
)
RETURNS TABLE
AS
RETURN
(
	SELECT
	  @CustomerId AS CustomerID,
	  dbo.JobName(Job) AS Job,
	  CONVERT(varchar(10),StartTimePlanned,23) AS [Date],
	  dbo.TimeStamp(StartTime) AS Start,
	  dbo.TimeStamp(EndTime) AS [End],
	  DurationPlanned as Duration,
	  IIF(RUT=1,PricePerHour*2, IIF(ROT=1, PricePerHour*2, PricePerHour)) AS PricePerHour,
	  IIF(RUT=1,0.5, IIF(ROT=1, 0.3, 0)) AS TaxDeductionFactor,
	  dbo.OBFactor(OBIndex) AS OBFactor,
	  OBIndex
	FROM dbo.Schedules
	WHERE Year(StartTimePlanned) = @Year
	AND Month(StartTimePlanned) = @Month
	AND CustomerID = @CustomerId
)

GO

