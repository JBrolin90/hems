Attribute VB_Name = "ControlsExtension"
'@Folder("Utilities")
Option Compare Database
Option Explicit

Public Function GetTextLength(pCtrl As Control, ByVal str As String, _
        Optional ByVal Height As Boolean = False)
    Dim lx As Long, ly As Long
    ' Initialize WizHook
    WizHook.Key = 51488399
    ' Populate the variables lx and ly with the width and height of the
    ' string in twips, according to the font settings of the control
    WizHook.TwipsFromFont pCtrl.FontName, pCtrl.FontSize, pCtrl.FontWeight, _
                          pCtrl.FontItalic, pCtrl.FontUnderline, 0, _
                          str, 0, lx, ly
    If Not Height Then
        GetTextLength = lx
    Else
        GetTextLength = ly
    End If
End Function

Public Function GetTextDimensions(pCtrl As Control, ByVal str As String) As LongTuple
  Dim lx As Long, ly As Long
  ' Initialize WizHook
  WizHook.Key = 51488399
  ' Populate the variables lx and ly with the width and height of the
  ' string in twips, according to the font settings of the control
  WizHook.TwipsFromFont pCtrl.FontName, pCtrl.FontSize, pCtrl.FontWeight, _
                        pCtrl.FontItalic, pCtrl.FontUnderline, 0, _
                         str, 0, lx, ly
  Dim res As New LongTuple
  res.h = ly
  res.l = lx
  Set GetTextDimensions = res
End Function


Public Sub AutoFit(ctl As Control)
  Dim lngWidth As Long
  lngWidth = GetTextLength(ctl, ctl.Value)
  ctl.Width = lngWidth + 40   '40: horizontal buffer; may need adjusting
End Sub

Public Function AutoFitPair(left As Long, ctl1 As TextBox, ctl2 As Label) As Long
  Dim Width1 As Long, Width2 As Long
  Width1 = GetTextLength(ctl1, Nz(ctl1.Value, ""))
  Width2 = GetTextLength(ctl2, Nz(ctl2.Caption, ""))
  ctl1.left = left
  ctl2.left = left
  If Width2 > Width1 Then Width1 = Width2
  ctl1.Width = Width1 + 40   '40: horizontal buffer; may need adjusting
  ctl2.Width = Width2 + 40   '40: horizontal buffer; may need adjusting
  AutoFitPair = ctl1.left + ctl1.Width
End Function

