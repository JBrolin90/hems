CREATE FUNCTION [dbo].[InvoiceTotalsExVAT]
(
	@Year int,
	@Month int,
	@CustomerId int
)
RETURNS TABLE
AS
RETURN
(
	SELECT Occasions,
	Total,
	TaxDeduction,
	InvoiceValue,
	InvoiceValue*0.25 AS VAT

	FROM dbo.InvoiceTotals(@Year,@Month,@CustomerId)
)

GO

