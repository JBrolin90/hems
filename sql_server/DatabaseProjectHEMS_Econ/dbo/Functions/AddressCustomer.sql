CREATE OR ALTER FUNCTION [dbo].[AddressCustomer]
(
	@customerID int
)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM dbo.AddressCustomers WHERE ID=@customerID
)

GO

