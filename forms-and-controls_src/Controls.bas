Attribute VB_Name = "Controls"
'@IgnoreModule SetAssignmentWithIncompatibleObjectType
'@Folder("Main")
Option Compare Database
Option Explicit


Public Function CreateTextBox(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As TextBox
  Dim tbToCreate As TextBox
  Set tbToCreate = CreateControl(frmName, acTextBox, acDetail, , vbNullString, Left, Top, Width, Height)
  tbToCreate.name = "tb_" + name
  Set CreateTextBox = tbToCreate
End Function
'@EntryPoint
Public Function CreateLabel(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As Label
  Dim lblToCreate As Label
  Set lblToCreate = CreateControl(frmName, acLabel, acDetail, , vbNullString, Left, Top, Width, Height)
  lblToCreate.name = "lbl" + name
  lblToCreate.Caption = name
  Set CreateLabel = lblToCreate
End Function

Public Function CreateLabelTextBox(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As TextBox
  Dim tbToCreate As TextBox
  Set tbToCreate = CreateTextBox(frmName, name, Left + 2000, Top, Width, Height)
  
  Dim lblToCreate As Label
  Set lblToCreate = CreateControl(frmName, acLabel, acDetail, "tb" + name, vbNullString, Left, Top, Width, Height)
  lblToCreate.name = "lbl_" + name
  lblToCreate.Caption = name
  
  Set CreateLabelTextBox = tbToCreate
End Function

