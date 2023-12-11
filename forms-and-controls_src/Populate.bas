Attribute VB_Name = "Populate"
'@Folder("DefaultImplementation")
Option Compare Database
Option Explicit

'@EntryPoint
Public Function BuildSingleForm(ByRef formData As IFormData) As Form
  Dim SingleForm As Form
  Set SingleForm = BuildSingleFormTemplate(formData.FormName)
  DistributeTextBoxes formData
  FormManipulation.SaveForm formData.FormName
  Set BuildSingleForm = SingleForm
End Function

Private Function BuildSingleFormTemplate(ByVal frmName As String) As Form
  Dim formTemplate As Form
  If FormManipulation.Exists(frmName) Then
    FormManipulation.CloseForm frmName
    FormManipulation.DeleteForm frmName
  End If
  FormManipulation.CreateStarterForm frmName
  Set formTemplate = FormManipulation.DesignMode(frmName)
  Set BuildSingleFormTemplate = formTemplate
End Function

Public Sub DistributeTextBoxes(formData As IFormData)
  Dim index As Long: index = 0
  Dim tbField As DAO.field

  For Each tbField In formData.Columns
    CreateLabelTextBox formData.FormName, tbField.name, 100, 100 + index * (240 + 50)
    index = index + 1
  Next
End Sub


