VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CFormManipulation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder "DefaultImplementation"
Option Compare Database
Option Explicit

Implements ICFormManipulation

Private Sub ICFormManipulation_CreateStandardForm(ByVal formName As String)
  FormManipulation.CreateStarterForm formName
End Sub
Private Sub ICFormManipulation_BuildSingleForm(ByVal formName As String)
  Populate.BuildSingleForm formName
End Sub
Private Function ICFormManipulation_FormMode(ByVal formName As String) As Form
  Set ICFormManipulation_FormMode = FormManipulation.FormMode(formName)
End Function
Private Function ICFormManipulation_DesignMode(ByVal formName As String) As Form
  Set ICFormManipulation_DesignMode = FormManipulation.DesignMode(formName)
End Function
Private Sub ICFormManipulation_CloseForm(ByVal formName As String)
  FormManipulation.CloseForm formName
End Sub
Private Sub ICFormManipulation_DeleteForm(ByVal formName As String)
  FormManipulation.DeleteForm formName
End Sub

