Attribute VB_Name = "PassThroughDBAccess"
'@Folder("Database")
Option Compare Database
Option Explicit
Option Private Module

Public Function GetRecordsetPT(ByVal InSql As String) As DAO.Recordset
  Dim recordsetPT As DAO.Recordset
  Dim qdfPassThrough As DAO.QueryDef
  
  Set qdfPassThrough = CurrentDb.CreateQueryDef(vbNullString)
  qdfPassThrough.Connect = dbSecret.connectionString
  qdfPassThrough.sql = InSql
  
  Set recordsetPT = qdfPassThrough.OpenRecordset()
  Set qdfPassThrough = Nothing
  Set GetRecordsetPT = recordsetPT
End Function


Public Function GetSQLFunction(ByVal InSqlFunction As String) As DAO.Recordset
  Set GetSQLFunction = GetRecordsetPT("SELECT * FROM " + InSqlFunction + "()")
End Function
Public Function GetSQLFunction1(ByVal InSqlFunction As String, ByVal Param As String) As DAO.Recordset
  Set GetSQLFunction1 = GetRecordsetPT("SELECT * FROM " + InSqlFunction + " (" + CStr(Param) + ")")
End Function

Public Function GetSQLFunction2(ByVal InSql As String, ByVal Param1 As String, ByVal Param2 As String) As DAO.Recordset
  Dim sql As String
  sql = "SELECT * FROM "
  sql = sql + InSql + "("
  sql = sql + CStr(Param1) + ", "
  sql = sql + CStr(Param2) + ")"
  Set GetSQLFunction2 = GetRecordsetPT(sql)
End Function
Public Function GetSQLFunction3(ByVal InSql As String, ByVal Param1 As String, ByVal Param2 As String, ByVal Param3 As String) As DAO.Recordset
  Dim sql As String
  sql = "SELECT * FROM "
  sql = sql + InSql + "("
  sql = sql + CStr(Param1) + ", "
  sql = sql + CStr(Param2) + ", "
  sql = sql + CStr(Param3) + ")"
  Set GetSQLFunction3 = GetRecordsetPT(sql)
End Function

