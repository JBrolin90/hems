Attribute VB_Name = "Controls"
'@Folder("Main")
Option Compare Database
Option Explicit


Public Function CreateTextBox(frmName As String, name As String, Left As Integer, Top As Integer, Optional Width As Integer = 2000, Optional Height As Integer = 240) As TextBox
  Dim tb As TextBox
  Set tb = CreateControl(frmName, acTextBox, acDetail, , "", Left, Top, Width, Height)
  tb.name = "tb" + name
  Set CreateTextBox = tb
End Function
Public Function CreateLabel(frmName As String, name As String, Left As Integer, Top As Integer, Optional Width As Integer = 2000, Optional Height As Integer = 240) As Label
  Dim lbl As Label
  Set lbl = CreateControl(frmName, acLabel, acDetail, , "", Left, Top, Width, Height)
  lbl.name = "lbl" + name
  lbl.Caption = name
  Set CreateLabel = lbl
End Function

Public Function CreateLabelTextBox(frmName As String, name As String, Left As Integer, Top As Integer, Optional Width As Integer = 2000, Optional Height As Integer = 240) As TextBox
  Dim tb As TextBox
  Set tb = CreateTextBox(frmName, name, Left + 2000, Top, Width, Height)
  
  Dim lbl As Label
  Set lbl = CreateControl(frmName, acLabel, acDetail, "tb" + name, "", Left, Top, Width, Height)
  lbl.name = "lbl" + name
  lbl.Caption = name
  
  Set CreateLabelTextBox = tb
End Function

