Attribute VB_Name = "FormManipulation"
'@Folder("Main")
Option Compare Database
Option Explicit

Public Function CreateStarterForm(formName As String) As AccessObject
  Dim frm As Form
  Dim tempName As String
  Set frm = CreateForm
  DoCmd.Restore
  tempName = frm.name
  DoCmd.Save acForm, tempName
  DoCmd.Close acForm, tempName, acSaveYes
  DoCmd.Rename formName, acForm, tempName
  Set CreateStarterForm = CurrentProject.AllForms(formName)
End Function

Public Function DesignMode(frmName As String) As Form
  Dim frm As Form
  DoCmd.OpenForm frmName, acDesign
  Set DesignMode = Forms(frmName)
End Function

Public Function FormMode(frmName As String) As Form
  DoCmd.OpenForm frmName, acNormal
  Set FormMode = Forms(frmName)
End Function

Public Sub CloseForm(frmName As String)
  DoCmd.Close acForm, frmName
End Sub

Public Sub SaveForm(frmName As String)
  DoCmd.Save acForm, frmName
End Sub

Public Sub DeleteForm(frmName As String)
  DoCmd.DeleteObject acForm, frmName
End Sub

Public Function Exists(frmName As String)
  Dim f As AccessObject
  On Error GoTo NonExisting
  Set f = CurrentProject.AllForms(frmName)
  Exists = True
  Exit Function
NonExisting:
    Exists = False
End Function

