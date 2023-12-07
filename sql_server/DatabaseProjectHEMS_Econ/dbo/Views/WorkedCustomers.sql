CREATE VIEW [dbo].[WorkedCustomers]
	AS Select DISTINCT 
	  Schedules.CustomerID, 
	  PopularName,
	  Year(Schedules.StartTimePlanned) AS [Year],
	  Month(Schedules.StartTimePlanned) AS [Month]
	From Schedules
	Inner Join Customers ON Schedules.CustomerID = Customers.ID

GO

