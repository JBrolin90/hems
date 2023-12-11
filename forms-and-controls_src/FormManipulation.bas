Attribute VB_Name = "FormManipulation"
'@IgnoreModule ParameterCanBeByVal
'@Folder "DefaultImplementation"
Option Compare Database
Option Explicit
Option Private Module

Public Sub CreateStarterForm(ByVal FormName As String)
  Dim StarterForm As Form
  Dim tempName As String
  Set StarterForm = CreateForm
  DoCmd.Restore
  tempName = StarterForm.name
  DoCmd.Save acForm, tempName
  DoCmd.Close acForm, tempName, acSaveYes
  DoCmd.Rename FormName, acForm, tempName
End Sub

Public Function DesignMode(ByVal frmName As String) As Form
  DoCmd.OpenForm frmName, acDesign
  Set DesignMode = Forms.Item(frmName)
End Function

Public Function FormMode(ByVal frmName As String) As Form
  DoCmd.OpenForm frmName, acNormal
  Set FormMode = Forms.Item(frmName)
End Function

Public Sub CloseForm(ByVal frmName As String)
  DoCmd.Close acForm, frmName
End Sub

Public Sub SaveForm(ByVal frmName As String)
  DoCmd.Save acForm, frmName
End Sub

Public Sub DeleteForm(ByVal frmName As String)
  DoCmd.DeleteObject acForm, frmName
End Sub

Public Function Exists(ByVal frmName As String) As Boolean
  Dim ExistingForm As AccessObject
  On Error GoTo NonExisting
  Set ExistingForm = CurrentProject.AllForms.Item(frmName)
  Exists = True
  Exit Function
NonExisting:
    Exists = False
End Function

Public Sub FillForm(ByVal formData As IFormData)
  Dim frmAddr As Form
  Set frmAddr = FormMode(formData.FormName)
  Dim field As DAO.field
  For Each field In formData.Columns
      frmAddr.Controls(Controls.TextBoxPrefix + field.name) = CStr(field.Value)
      Debug.Print field.name + ": " + CStr(field.Value)
  Next
End Sub

