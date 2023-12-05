Attribute VB_Name = "JetDBAccess"
'@Folder("Database")
Option Compare Database
Option Explicit

Private dBase As DAO.Database

Private Sub OpenDB()
  Set dBase = DAO.OpenDatabase(vbNullString, False, False, dbSecret.connectionString)
End Sub

Public Property Get connection() As DAO.Database
  If dBase Is Nothing Then OpenDB
  Set connection = dBase
End Property

'@EntryPoint
Public Function GetRecordset(ByVal InSql As String) As DAO.Recordset
  Dim JetDB As DAO.Database
  Dim rstDynamic As DAO.Recordset
  Set JetDB = connection
  Set rstDynamic = JetDB.OpenRecordset(InSql, dbOpenDynaset, dbSeeChanges)
  Set GetRecordset = rstDynamic
End Function

