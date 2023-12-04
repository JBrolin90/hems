VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "HemsDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'@Folder("Database")
Option Compare Database
Option Explicit


Implements IHemsDB

Private Function Query(sqlQuery As String) As DAO.Recordset
  Set Query = db.GetRecordsetPT(sqlQuery)
End Function

Private Function FunctionQuery(InSqlFunction As String) As DAO.Recordset
  Set FunctionQuery = db.GetSQLFunction(InSqlFunction)
End Function
Private Function FunctionQuery1(InSqlFunction As String, Param As Variant) As DAO.Recordset
  Set FunctionQuery1 = db.GetSQLFunction1(InSqlFunction, Param)
End Function

Private Function FunctionQuery2(InSqlFunction As String, Param1 As Variant, Param2 As Variant) As DAO.Recordset
  Set FunctionQuery2 = db.GetSQLFunction2(InSqlFunction, Param1, Param2)
End Function

Private Function FunctionQuery3(InSqlFunction As String, Param1 As Variant, Param2 As Variant, Param3 As Variant) As DAO.Recordset
  Set FunctionQuery3 = db.GetSQLFunction3(InSqlFunction, Param1, Param2, Param3)
End Function


Private Function Execute(sqlExec As String)

End Function

Private Function IHemsDB_Query(sqlQuery As String) As DAO.Recordset
  Set IHemsDB_Query = Query(sqlQuery)
End Function

Private Function IHemsDB_FunctionQuery(InSqlFunction As String) As DAO.Recordset
  Set IHemsDB_FunctionQuery = FunctionQuery(InSqlFunction)
End Function
Private Function IHemsDB_FunctionQuery1(InSqlFunction As String, Param As Variant) As DAO.Recordset
  Set IHemsDB_FunctionQuery1 = FunctionQuery1(InSqlFunction, Param)
End Function
Private Function IHemsDB_FunctionQuery2(InSqlFunction As String, Param1 As Variant, Param2 As Variant) As DAO.Recordset
  Set IHemsDB_FunctionQuery2 = FunctionQuery2(InSqlFunction, Param1, Param2)
End Function

Private Function IHemsDB_FunctionQuery3(InSqlFunction As String, Param1 As Variant, Param2 As Variant, Param3 As Variant) As DAO.Recordset
  Set IHemsDB_FunctionQuery3 = FunctionQuery3(InSqlFunction, Param1, Param2, Param3)
End Function

Private Function IHemsDB_Execute(sqlExec As String) As Variant
  IHemsDB_Execute = Execute(sqlExec)
End Function

Private Function IHemsDB_MonthNames() As DAO.Recordset
  Set IHemsDB_MonthNames = FunctionQuery("MonthNames")
End Function

