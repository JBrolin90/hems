CREATE FUNCTION [dbo].[InvoiceTotals]
(
	@Year int,
	@Month int,
	@CustomerId int
)
RETURNS TABLE
AS
RETURN
(
	SELECT COUNT(CustomerID) Occasions,
	SUM(Price) AS Total,
	SUM(TaxDeduction) AS TaxDeduction,
	SUM(Price) - SUM(TaxDeduction) AS InvoiceValue

	FROM dbo.InvoiceItemValues(@Year,@Month,@CustomerId)
)

GO

