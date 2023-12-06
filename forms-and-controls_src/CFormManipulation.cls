VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CFormManipulation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Main")
Option Compare Database
Option Explicit

Implements ICFormManipulation

Private Function ICFormManipulation_CreateStandardForm(formName As String) As Form
  Set ICFormManipulation_CreateStandardForm = FormManipulation.CreateStarterForm(formName)
End Function
Private Function ICFormManipulation_FormMode(formName As String) As Form
  FormManipulation.FormMode (formName)
End Function
Private Function ICFormManipulation_DesignMode(formName As String) As Form
  FormManipulation.DesignMode (formName)
End Function
Private Sub ICFormManipulation_CloseForm(formName As String)
  FormManipulation.CloseForm formName
End Sub
Private Sub ICFormManipulation_DeleteForm(formName As String)
  FormManipulation.DeleteForm formName
End Sub

