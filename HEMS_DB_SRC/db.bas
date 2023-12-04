Attribute VB_Name = "db"
'@Folder("Database")
Option Compare Database
Option Explicit
Option Private Module
Private dBase As DAO.Database

Public Function OpenDB() As DAO.Database
  Set dBase = DAO.OpenDatabase(vbNullString, False, False, dbSecret.connectionString)
  Set OpenDB = dBase
End Function

Public Property Get connection() As DAO.Database
  If dBase Is Nothing Then OpenDB
  Set connection = dBase
End Property

Public Function GetRecordset(ByVal InSql As String) As DAO.Recordset
  Dim d As DAO.Database
  Dim r As DAO.Recordset
  Set d = connection
  Set r = d.OpenRecordset(InSql, dbOpenDynaset, dbSeeChanges)
  Set GetRecordset = r
End Function

Public Function GetRecordsetPT(ByVal InSql As String) As DAO.Recordset
  Dim rs As DAO.Recordset
  Dim qdf As DAO.QueryDef
  
  Set qdf = CurrentDb.CreateQueryDef(vbNullString)
  qdf.Connect = dbSecret.connectionString
  qdf.SQL = InSql
  
  Set rs = qdf.OpenRecordset()
  Set qdf = Nothing
  Set GetRecordsetPT = rs
End Function


Public Function GetSQLFunction(ByVal InSqlFunction As String) As DAO.Recordset
  Set GetSQLFunction = GetRecordsetPT("SELECT * FROM " + InSqlFunction + "()")
End Function
Public Function GetSQLFunction1(ByVal InSqlFunction As String, Param As Variant) As DAO.Recordset
  Set GetSQLFunction1 = GetRecordsetPT("SELECT * FROM " + InSqlFunction + " (" + CStr(Param) + ")")
End Function

Public Function GetSQLFunction2(ByVal InSql As String, Param1 As Variant, Param2 As Variant) As DAO.Recordset
  Dim s As String
  s = "SELECT * FROM "
  s = s + InSql + "("
  s = s + CStr(Param1) + ", "
  s = s + CStr(Param2) + ")"
  Set GetSQLFunction2 = GetRecordsetPT(s)
End Function
Public Function GetSQLFunction3(ByVal InSql As String, Param1 As Variant, Param2 As Variant, Param3 As Variant) As DAO.Recordset
  Dim s As String
  s = "SELECT * FROM "
  s = s + InSql + "("
  s = s + CStr(Param1) + ", "
  s = s + CStr(Param2) + ", "
  s = s + CStr(Param3) + ")"
  Set GetSQLFunction3 = GetRecordsetPT(s)
End Function

Public Function Hello
  Debug.Print "Hello!"
End Function
