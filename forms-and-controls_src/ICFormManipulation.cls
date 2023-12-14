VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ICFormManipulation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
'@IgnoreModule AnnotationInIncompatibleComponentType
'@Folder "Abstract"
'@Interface

Option Explicit

'@EntryPoint
Public Sub BuildSingleForm(ByRef formData As IFormData)
End Sub
'@EntryPoint
Public Sub BuildContinuousForm(ByRef formData As IFormData)
End Sub
'@EntryPoint
Public Sub CreateStandardForm(ByVal formName As String)
End Sub
'@EntryPoint
Public Function DesignMode(ByVal frmName As String) As Form
End Function
'@EntryPoint
Public Function FormMode(ByVal frmName As String) As Form
End Function
'@EntryPoint
Public Sub CloseForm(ByVal formName As String)
End Sub
'@EntryPoint
Public Sub DeleteForm(ByVal formName As String)
End Sub
'@EntryPoint
Public Sub FillFormTextBoxes(inForm As Form, formData As IFormData)
End Sub
Public Sub FillContinuousForm(formName As String)
End Sub
