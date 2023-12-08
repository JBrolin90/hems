VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "HemsDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'@Exposed
'@IgnoreModule UseMeaningfulName
'@Folder("Database")
Option Compare Database
Option Explicit


Implements IHemsDB

Private Function IHemsDB_Query(ByVal sqlQuery As String) As DAO.Recordset
  Set IHemsDB_Query = PassThroughDBAccess.GetRecordsetPT(sqlQuery)
End Function

Private Function IHemsDB_FunctionQuery(ByVal InSqlFunction As String) As DAO.Recordset
  Set IHemsDB_FunctionQuery = PassThroughDBAccess.GetSQLFunction(InSqlFunction)
End Function
Private Function IHemsDB_FunctionQuery1(ByVal InSqlFunction As String, ByVal Param As String) As DAO.Recordset
  Set IHemsDB_FunctionQuery1 = PassThroughDBAccess.GetSQLFunction1(InSqlFunction, Param)
End Function
Private Function IHemsDB_FunctionQuery2(ByVal InSqlFunction As String, ByVal Param1 As String, ByVal Param2 As String) As DAO.Recordset
  Set IHemsDB_FunctionQuery2 = PassThroughDBAccess.GetSQLFunction2(InSqlFunction, Param1, Param2)
End Function

Private Function IHemsDB_FunctionQuery3(ByVal InSqlFunction As String, ByVal Param1 As String, ByVal Param2 As String, ByVal Param3 As String) As DAO.Recordset
  Set IHemsDB_FunctionQuery3 = PassThroughDBAccess.GetSQLFunction3(InSqlFunction, Param1, Param2, Param3)
End Function

Private Function IHemsDB_Execute(ByVal sqlExec As String) As Variant
  Err.Raise 999, "HemsDB.Execute", "Not implemented yet exception - " + sqlExec
  IHemsDB_Execute = Null
End Function

Private Function IHemsDB_MonthNames() As DAO.Recordset
  Set IHemsDB_MonthNames = IHemsDB_FunctionQuery("MonthNames")
End Function

