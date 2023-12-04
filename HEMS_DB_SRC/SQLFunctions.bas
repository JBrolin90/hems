Attribute VB_Name = "SQLFunctions"
'@Folder("Database")
Option Compare Database
Option Explicit
Option Private Module

Public Sub GetCustomerTest()
  Dim rs As DAO.Recordset
  Dim qdf As DAO.QueryDef
  
  Set rs = db.GetRecordsetPT("SELECT * FROM Customer(1)")
  Debug.Print rs.RecordCount
  rs.Close
End Sub

Public Sub GetCustomerTest2()
  Dim rs As DAO.Recordset
  Dim qdf As DAO.QueryDef
  
  Set rs = db.GetSQLFunction1("Customer", 1)
  Debug.Print rs.RecordCount
  rs.Close
End Sub

Public Sub GetCustomersTest()

  Dim rs As DAO.Recordset
  Dim qdf As DAO.QueryDef
  
  Set rs = db.GetRecordsetPT("SELECT * FROM Customers")
  Debug.Print rs.RecordCount
  rs.Close
End Sub

Public Sub GetMonthNamesTest()

  Dim rs As DAO.Recordset
  Dim qdf As DAO.QueryDef
  
  Set rs = db.GetSQLFunction("MonthNames")
  Debug.Print rs.RecordCount
  rs.Close
End Sub

