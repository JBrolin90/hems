CREATE FUNCTION [dbo].[InvoiceItemValues]
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
	  CustomerID,
	  Job,
	  Date,
	  Start,
	  [End],
	  Duration,
	  PricePerHour,
	  Duration*PricePerHour*OBFactor AS OBSupplement,
	  Duration*PricePerHour+Duration*PricePerHour*OBFactor AS Price,
	  (Duration*PricePerHour+Duration*PricePerHour*OBFactor)*TaxDeductionFactor AS TaxDeduction
	FROM InvoiceItems(@Year,@Month,@CustomerId)
)

GO

