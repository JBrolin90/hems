VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ICFormManipulation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Main")
'@Interface

Option Explicit

Public Function CreateStandardForm(formName As String) As Form
End Function
Public Function DesignMode(frmName As String) As Form
End Function
Public Function FormMode(frmName As String) As Form
End Function
Private Sub CloseForm(formName As String)
End Sub
Private Sub DeleteForm(formName As String)
End Sub
