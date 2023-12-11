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

Private Sub ICFormManipulation_CreateStandardForm(ByVal FormName As String)
  FormManipulation.CreateStarterForm FormName
End Sub
Private Sub ICFormManipulation_BuildSingleForm(ByRef formData As IFormData)
  Populate.BuildSingleForm formData
End Sub
Private Function ICFormManipulation_FormMode(ByVal FormName As String) As Form
  Set ICFormManipulation_FormMode = FormManipulation.FormMode(FormName)
End Function
Private Function ICFormManipulation_DesignMode(ByVal FormName As String) As Form
  Set ICFormManipulation_DesignMode = FormManipulation.DesignMode(FormName)
End Function
Private Sub ICFormManipulation_CloseForm(ByVal FormName As String)
  FormManipulation.CloseForm FormName
End Sub
Private Sub ICFormManipulation_DeleteForm(ByVal FormName As String)
  FormManipulation.DeleteForm FormName
End Sub

Private Sub ICFormManipulation_FillForm(formData As IFormData)
  FormManipulation.FillForm formData
End Sub
