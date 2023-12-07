CREATE PROCEDURE spMonthlyInvoices 
	@Year int, 
	@Month int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Schedules.CustomerID
	, Customers.FirstName + ' ' + Customers.LastName as Customers
	, SUM(DurationPlanned) AS TotalHours
	, IIF(Schedules.RUT=1, SUM(DurationPlanned*PricePerHour), SUM(DurationPlanned*PricePerHour)*1.25 ) AS Price
	, CONVERT(DATE, CONVERT(nvarchar(10),@Year) + '-' + CONVERT(nvarchar(10),@Month) + '-01', 102) AS InvoiceDate
	, CONVERT(nvarchar(10),@Year) + CONVERT(nvarchar(10),@Month) + CONVERT(nvarchar(10),Schedules.CustomerID) + '-1' AS Invoice
	, '       ' AS PayedDate
	, '       ' AS RUTAsk
	, '       ' AS RUTPayed
	FROM Schedules
	JOIN Customers ON Schedules.CustomerID = Customers.ID
	WHERE Year(StartTimePlanned) = @Year
	AND Month(StartTimePlanned) = @Month
	GROUP BY Schedules.CustomerID, Customers.FirstName, Customers.LastName, Schedules.RUT
END

GO

