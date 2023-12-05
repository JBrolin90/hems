Attribute VB_Name = "TestFunctions"
'@Folder("Database")
Option Compare Database
Option Explicit
Option Private Module

Public Sub TestQueryWithSQLFunction()
  Dim rstCustomer As DAO.Recordset
  
  Set rstCustomer = Functions.GetDBObject().Query("Select * FROM Customer(1)")
  Debug.Print rstCustomer.RecordCount
  rstCustomer.Close
End Sub

Public Sub TestQueryWithOneParameter()
  Dim rsCustomer As DAO.Recordset
  
  Set rsCustomer = Functions.GetDBObject().FunctionQuery1("Customer", 1)
  Debug.Print rsCustomer.RecordCount
  rsCustomer.Close
End Sub

Public Sub TestPTQuery()
  Dim rstCustomers As DAO.Recordset
  
  Set rstCustomers = Functions.GetDBObject().Query("Select * FROM Customers")
  Debug.Print rstCustomers.RecordCount
  rstCustomers.Close
End Sub

Public Sub GetMonthNamesTest()

  Dim rstMonthNames As DAO.Recordset
  
  Set rstMonthNames = PassThroughDBAccess.GetSQLFunction("MonthNames")
  Debug.Print rstMonthNames.RecordCount
  rstMonthNames.Close
End Sub

