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

Public Sub TestGetSQLFunctionVariableNoOfParams(ByVal InSqlFunction As String, Optional args As Variant = Null)
  Dim rst As DAO.Recordset
  'https://www.vbforums.com/showthread.php?882187-RESOLVED-Passing-a-ParamArray-from-one-routine-to-another
  Set rst = Factory.DBOject.GetSQLFunctionVariableNoOfParams(InSqlFunction, args)
End Sub

Public Sub TestSeveralGetSQLFunctionVariableNoOfParams()
  TestGetSQLFunctionVariableNoOfParams "Customer", 1
  TestGetSQLFunctionVariableNoOfParams "Customers"
  TestGetSQLFunctionVariableNoOfParams "CustomersToInvoice", Array(2023, 10)
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

