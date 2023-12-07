Attribute VB_Name = "FormManipulation"
'@IgnoreModule ParameterCanBeByVal
'@Folder("Main")
Option Compare Database
Option Explicit

Public Sub CreateStarterForm(ByVal formName As String)
  Dim StarterForm As Form
  Dim tempName As String
  Set StarterForm = CreateForm
  DoCmd.Restore
  tempName = StarterForm.name
  DoCmd.Save acForm, tempName
  DoCmd.Close acForm, tempName, acSaveYes
  DoCmd.Rename formName, acForm, tempName
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

