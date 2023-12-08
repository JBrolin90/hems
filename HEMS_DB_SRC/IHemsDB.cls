VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IHemsDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'@Exposed
'@IgnoreModule UseMeaningfulName
'@Folder("Interface")
'@Interface

Option Explicit

Public Function Query(ByVal sqlQuery As String) As DAO.Recordset
End Function
Public Function FunctionQuery(ByVal InSqlFunction As String) As DAO.Recordset
End Function
Public Function FunctionQuery1(ByVal InSqlFunction As String, ByVal Param As String) As DAO.Recordset
End Function
Public Function FunctionQuery2(ByVal InSqlFunction As String, ByVal Param1 As String, ByVal Param2 As String) As DAO.Recordset
End Function
Public Function FunctionQuery3(ByVal InSqlFunction As String, ByVal Param1 As String, ByVal Param2 As String, ByVal Param3 As String) As DAO.Recordset
End Function
Public Function Execute(ByVal sqlExec As String) As Variant
End Function
Public Function MonthNames() As DAO.Recordset
End Function
