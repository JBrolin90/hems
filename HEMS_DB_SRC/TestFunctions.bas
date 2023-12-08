Attribute VB_Name = "TestFunctions"
'@Folder("Tests")
Option Compare Database
Option Explicit
Option Private Module

Public Sub TestQueryWithSQLFunction()
  Dim rstCustomer As DAO.Recordset
  
  Set rstCustomer = Factory.GetDBObject().Query("Select * FROM Customer(1)")
  Debug.Print rstCustomer.RecordCount
  rstCustomer.Close
End Sub

Public Sub TestQueryWithOneParameter()
  Dim rsCustomer As DAO.Recordset
  
  Set rsCustomer = Factory.GetDBObject().FunctionQuery1("Customer", 1)
  Debug.Print rsCustomer.RecordCount
  rsCustomer.Close
End Sub

Public Sub TestPTQuery()
  Dim rstCustomers As DAO.Recordset
  
  Set rstCustomers = Factory.GetDBObject().Query("Select * FROM Customers")
  Debug.Print rstCustomers.RecordCount
  rstCustomers.Close
End Sub

Public Sub GetMonthNamesTest()

  Dim rstMonthNames As DAO.Recordset
  
  Set rstMonthNames = PassThroughDBAccess.GetSQLFunction("MonthNames")
  Debug.Print rstMonthNames.RecordCount
  rstMonthNames.Close
End Sub

