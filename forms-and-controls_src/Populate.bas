Attribute VB_Name = "Populate"
'@Folder("DefaultImplementation")
Option Compare Database
Option Explicit

'@EntryPoint
Public Function BuildContinuousForm(ByRef formData As IFormData) As Form
  Dim frm As Form
  Set frm = BuildSingleFormTemplate(formData.formName)
  DistributeTextBoxesHorisontally formData
  frm.DefaultView = 1 'Continuous View: https://learn.microsoft.com/en-us/office/vba/api/access.form.defaultview
  FormManipulation.SaveForm formData.formName
  
  'https://learn.microsoft.com/en-us/office/vba/api/access.accommand
  'http://www.java2s.com/Code/VBA-Excel-Access-Word/Application/UsingtheDoCmdObjecttoProgrammaticallyAddSectionstoReportsatRuntime.htm
  DoCmd.RunCommand acCmdFormHdrFtr 'https://www.tek-tips.com/viewthread.cfm?qid=1443677
  DistributeHeaderLabelsHorisontally formData
  frm.Section(acDetail).Height = 110
  FormManipulation.SaveForm formData.formName
  'FormManipulation.FormMode frm.name
 

End Function


'@EntryPoint
Public Function BuildSingleForm(ByRef formData As IFormData) As Form
  Dim SingleForm As Form
  Set SingleForm = BuildSingleFormTemplate(formData.formName)
  DistributeLabelTextBoxesVertically formData
  FormManipulation.SaveForm formData.formName
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

Public Sub DistributeLabelTextBoxesVertically(formData As IFormData)
  Dim index As Long: index = 0
  Dim tbField As DAO.field

  For Each tbField In formData.Columns
    CreateLabelTextBox formData.formName, tbField.name, 100, 100 + index * (240 + 50)
    index = index + 1
  Next
End Sub

Public Sub DistributeTextBoxesHorisontally(formData As IFormData)
  Dim index As Long: index = 0
  Dim tbField As DAO.field

  For Each tbField In formData.Columns
    CreateTextBox formData.formName, tbField.name, 100 + index * (1500 + 50), 100
    index = index + 1
  Next
End Sub

Public Sub DistributeHeaderLabelsHorisontally(formData As IFormData)
  Dim index As Long: index = 0
  Dim tbField As DAO.field

  For Each tbField In formData.Columns
    CreateHeaderLabel formData.formName, tbField.name, 100 + index * (1500 + 50), 100
    index = index + 1
  Next
End Sub

