VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IHemsDB"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'@Folder("Database")
'@Interface

Option Explicit

Public Function Query(sqlQuery As String) As DAO.Recordset
End Function

Public Function FunctionQuery(InSqlFunction As String) As DAO.Recordset
End Function
Public Function FunctionQuery1(InSqlFunction As String, Param As Variant) As DAO.Recordset
End Function
Public Function FunctionQuery2(InSqlFunction As String, Param1 As Variant, Param2 As Variant) As DAO.Recordset
End Function
Public Function FunctionQuery3(InSqlFunction As String, Param1 As Variant, Param2 As Variant, Param3 As Variant) As DAO.Recordset
End Function
Public Function Execute(sqlExec As String) As Variant
End Function
Public Function MonthNames() As DAO.Recordset
End Function
