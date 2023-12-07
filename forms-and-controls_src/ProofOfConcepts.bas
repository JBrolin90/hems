Attribute VB_Name = "ProofOfConcepts"
'@IgnoreModule FunctionReturnValueDiscarded, UseMeaningfulName
'@Folder("Tests")
Option Compare Database
Option Explicit

Public Sub POC_TestPopulateAFewTextBoxes()
  Dim TestForm As Form
  Dim frmName As String
  frmName = "PopluateAFewTextBoxes"
  FormManipulation.CreateStarterForm (frmName)
  Set TestForm = FormManipulation.DesignMode(frmName)
  
  '@Ignore UseMeaningfulName
  Dim i As Long
  Dim name As String
  name = "SampleTextBox"
  For i = 1 To 10
    CreateTextBox frmName, name + CStr(i), 100, 100 + i * (240 + 50)
  Next
End Sub

Public Sub POC_CreateAForm()
  Dim frm As Form
  Dim frmName As String
  frmName = "Customer"
  If FormManipulation.Exists(frmName) Then
    FormManipulation.CloseForm frmName
    FormManipulation.DeleteForm frmName
  End If
  FormManipulation.CreateStarterForm (frmName)
  Set frm = FormManipulation.DesignMode(frmName)
  
  Dim rstCustomer As DAO.Recordset
  Set rstCustomer = Database.GetDBObject().FunctionQuery1("Customer", 1)
  
  Populate.DistributeTextBoxes frmName, rstCustomer.Fields
End Sub

Public Sub POC_PopulateAFewLabelTextBoxes()
  Dim frm As Form
  Dim frmName As String
  frmName = "PopluateAFewLableTextBoxes"
  FormManipulation.CreateStarterForm (frmName)
  FormManipulation.DesignMode frmName
  
  Dim i As Long
  Dim tb As TextBox
  Dim name As String
  name = "SampleTextBox"
  For i = 1 To 40

    CreateLabelTextBox frmName, name + CStr(i), 100, 100 + i * (240 + 50)
  Next
End Sub


Public Sub test()
'https://learn.microsoft.com/en-us/office/vba/language/reference/visual-basic-add-in-model/properties-visual-basic-add-in-model#lines
'http://www.cpearson.com/excel/vbe.aspx
  Dim VBProject As Object
  Dim s As String
  Set VBProject = Application.VBE.VBProjects.Item("Database1")
  s = Application.VBE.SelectedVBComponent.CodeModule.lines(1, 5)
  Debug.Print s
End Sub

Public Sub test2()
  Dim VBAEditor As VBIDE.VBE
  Dim VBAProject As VBIDE.VBProject
  Dim VBAModule As VBIDE.VBComponent
  Dim CodeModule As VBIDE.CodeModule
  
  Set VBAEditor = Application.VBE
  Set VBAProject = VBAEditor.VBProjects.Item("Database1")
  Set VBAModule = VBAProject.VBComponents.Item("Controls")
  Set CodeModule = VBAModule.CodeModule
  
  Dim i As Long
  For i = 1 To CodeModule.CountOfLines
    Debug.Print CodeModule.lines(i, 1)
  Next
End Sub

Public Function ThisProject() As String
    Dim objVBProject As Object
    Dim strReturn As String
    For Each objVBProject In Application.VBE.VBProjects
        If objVBProject.FileName = CurrentDb.name Then
            strReturn = objVBProject.name
            Exit For
        End If
    Next
    ThisProject = strReturn
End Function

