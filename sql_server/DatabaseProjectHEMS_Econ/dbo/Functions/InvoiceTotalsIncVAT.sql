CREATE FUNCTION [dbo].[InvoiceTotalsIncVAT]
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
	InvoiceValue*0.2 AS IncludedVAT

	FROM dbo.InvoiceTotals(@Year,@Month,@CustomerId)
)

GO

