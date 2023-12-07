Attribute VB_Name = "Populate"
'@Folder("Populate")
Option Compare Database
Option Explicit

'@EntryPoint
Public Function BuildSingleForm(ByVal queryName As String) As Form
  Dim SingleForm As Form
  Set SingleForm = BuildSingleFormTemplate(queryName)
  DistributeTextBoxes SingleForm.name, RetrieveFields(queryName)
  FormManipulation.SaveForm SingleForm.name
  Set BuildSingleForm = SingleForm
End Function

Private Function BuildSingleFormTemplate(ByVal frmName As String) As Form
  Dim formTemplate As Form
  If FormManipulation.Exists(frmName) Then
    FormManipulation.CloseForm frmName
    FormManipulation.DeleteForm frmName
  End If
  FormManipulation.CreateStarterForm (frmName)
  Set formTemplate = FormManipulation.DesignMode(frmName)
  Set BuildSingleFormTemplate = formTemplate
End Function

Public Sub DistributeTextBoxes(ByVal frmName As String, ByVal tbFields As DAO.Fields)
  Dim index As Long: index = 0
  Dim tbField As DAO.Field

  For Each tbField In tbFields
    CreateLabelTextBox frmName, tbField.name, 100, 100 + index * (240 + 50)
    index = index + 1
  Next
End Sub

Private Function RetrieveFields(ByVal queryName As String) As DAO.Fields
  Dim rstQueryName As DAO.Recordset
  Dim sql As String
  sql = "SELECT Top(1) * FROM " + queryName
  Set rstQueryName = Database.GetDBObject().Query(sql)

  Set RetrieveFields = rstQueryName.Fields
End Function

