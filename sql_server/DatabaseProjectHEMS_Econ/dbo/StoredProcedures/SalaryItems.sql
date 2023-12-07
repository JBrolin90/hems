CREATE   PROCEDURE [dbo].[SalaryItems]
	@year int,
	@month int,
	@employee int
AS
	SELECT Year([StartTimePlanned]) AS Y, Month([StartTimePlanned]) AS M, StartTimePlanned, DurationPlanned, 
       [PayPerHour]*[DurationPlanned] AS Salary, CustomerID
FROM Schedules
WHERE EmployeeIDPlanned=@employee AND Year([StartTimePlanned])=@year AND Month([StartTimePlanned])=@month
ORDER BY Schedules.StartTimePlanned;
RETURN 0

GO

