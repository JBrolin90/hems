VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "MyFormData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder "DefaultImplementation"
Option Compare Database
Option Explicit

Implements IFormData

Private lArgs As Variant
Private lFunctionQuery As String

Public Property Get Columns() As DAO.Fields
  Set Columns = Records.Fields
End Property

Private Property Get FormName() As String
  FormName = lFunctionQuery
End Property

' https://stackoverflow.com/questions/36313575/passing-an-array-of-arguments-to-callbyname-vba
Public Property Get Records() As DAO.Recordset
  Set Records = Hems_EconDB.DBOject.GetSQLFunctionVariableNoOfParams(lFunctionQuery, Array(lArgs)(0))
End Property

Public Property Let FunctionQuery(query As String)
  lFunctionQuery = query
End Property

Public Property Let args(val As Variant)
  lArgs = val
End Property



'-------------------------------------------------------------------
'-------------- Interface implementation ---------------------------
'-------------------------------------------------------------------
Private Property Get IFormData_Columns() As DAO.Fields
  Set IFormData_Columns = Columns
End Property

Private Property Get IFormData_FormName() As String
  IFormData_FormName = FormName
End Property

Private Property Get IFormData_Records() As DAO.Recordset
  Set IFormData_Records = Records()
End Property
