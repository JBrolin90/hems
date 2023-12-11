Attribute VB_Name = "Controls"
'@IgnoreModule SetAssignmentWithIncompatibleObjectType
'@Folder "DefaultImplementation"
Option Compare Database
Option Explicit
Option Private Module

Public Const TextBoxPrefix As String = "tb_"
Public Const LabelPrefix As String = "lbl_"

Public Function CreateTextBox(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As TextBox
  Dim tbToCreate As TextBox
  Set tbToCreate = CreateControl(frmName, acTextBox, acDetail, , vbNullString, Left, Top, Width, Height)
  tbToCreate.name = TextBoxPrefix + name
  Set CreateTextBox = tbToCreate
End Function
'@EntryPoint
Public Function CreateLabel(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As Label
  Dim lblToCreate As Label
  Set lblToCreate = CreateControl(frmName, acLabel, acDetail, , vbNullString, Left, Top, Width, Height)
  lblToCreate.name = LabelPrefix + name
  lblToCreate.Caption = name
  Set CreateLabel = lblToCreate
End Function

Public Function CreateLabelTextBox(ByVal frmName As String, ByVal name As String, ByVal Left As Long, ByVal Top As Long, Optional ByVal Width As Long = 2000, Optional ByVal Height As Long = 240) As TextBox
  Dim tbToCreate As TextBox
  Set tbToCreate = CreateTextBox(frmName, name, Left + 2000, Top, Width, Height)
  
  Dim lblToCreate As Label
  Set lblToCreate = CreateControl(frmName, acLabel, acDetail, TextBoxPrefix + name, vbNullString, Left, Top, Width, Height)
  lblToCreate.name = LabelPrefix + name
  lblToCreate.Caption = name
  
  Set CreateLabelTextBox = tbToCreate
End Function


