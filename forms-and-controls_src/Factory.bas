Attribute VB_Name = "Factory"
'@Folder "Abstract"
Option Compare Database
Option Explicit

Public Function BuildManipulator() As ICFormManipulation
  Set BuildManipulator = New CFormManipulation
End Function

Public Function BuildFormData(SqlFunctionQuery As String, ParamArray args() As Variant) As MyFormData
  Set BuildFormData = New MyFormData
  BuildFormData.FunctionQuery = SqlFunctionQuery
  If UBound(args) = -1 Then BuildFormData.args = Null
  If UBound(args) <> -1 Then BuildFormData.args = Array(args)(0)
End Function

