CREATE FUNCTION [dbo].[Customer]
(
	@customerID int
)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM Customers WHERE ID=@customerID
)

GO

