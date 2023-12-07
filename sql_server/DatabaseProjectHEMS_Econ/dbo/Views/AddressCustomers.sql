CREATE OR ALTER VIEW [dbo].[AddressCustomers]
  AS SELECT ID
  , FirstName + ' ' + LastName AS FullName 
  , Street + ' ' + StreetNumber + ' ' + ISNULL(AptNr, '') AS FullAddress
  , Zip + ' ' + City AS FullCity
  FROM [Customers]