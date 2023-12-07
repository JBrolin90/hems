CREATE FUNCTION [dbo].[CustomersToInvoice]
(
	@Year int,
	@Month int
)
RETURNS TABLE
AS
RETURN
(
	SELECT CustomerID, PopularName
	FROM WorkedCustomers
	WHERE [Year] = @Year
	AND [Month] = @Month
)

GO

