Attribute VB_Name = "Populate"
'@Folder("Populate")
Option Compare Database
Option Explicit

Public Sub PopulateAFewTextBoxes()
  Dim frm As Form
  Dim frmName As String
  frmName = "PopluateAFewTextBoxes"
  FormManipulation.CreateStarterForm (frmName)
  Set frm = FormManipulation.DesignMode(frmName)
  
  Dim i As Integer
  Dim tb As TextBox
  Dim name As String
  name = "SampleTextBox"
  For i = 1 To 10
    CreateTextBox frmName, name + CStr(i), 100, 100 + i * (240 + 50)
  Next
End Sub

Public Sub PopulateAFewLabelTextBoxes()
  Dim frm As Form
  Dim frmName As String
  frmName = "PopluateAFewLableTextBoxes"
  FormManipulation.CreateStarterForm (frmName)
  Set frm = FormManipulation.DesignMode(frmName)
  
  Dim i As Integer
  Dim tb As TextBox
  Dim name As String
  name = "SampleTextBox"
  For i = 1 To 40

    CreateLabelTextBox frmName, name + CStr(i), 100, 100 + i * (240 + 50)
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
Public Sub test()
'https://learn.microsoft.com/en-us/office/vba/language/reference/visual-basic-add-in-model/properties-visual-basic-add-in-model#lines
'http://www.cpearson.com/excel/vbe.aspx
  Dim VBProject As Object
  Dim VBComponent As Object
  Dim s As String
  Set VBProject = Application.VBE.VBProjects("Database1")
  s = Application.VBE.SelectedVBComponent.CodeModule.lines(1, 5)
End Sub

Public Sub test2()
  Dim VBAEditor As VBIDE.VBE
  Dim VBAProject As VBIDE.VBProject
  Dim VBAModule As VBIDE.VBComponent
  Dim CodeModule As VBIDE.CodeModule
  
  Set VBAEditor = Application.VBE
  Set VBAProject = VBAEditor.VBProjects("Database1")
  Set VBAModule = VBAProject.VBComponents("Controls")
  Set CodeModule = VBAModule.CodeModule
  
  Dim i As Integer
  Dim l As String
  For i = 1 To CodeModule.CountOfLines
    Debug.Print CodeModule.lines(i, 1)
  Next
  
End Sub


Public Sub AForm()
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
  
  DistributeTextBoxes frmName, rstCustomer.Fields
End Sub

Private Sub DistributeTextBoxes(frmName As String, tbFields As DAO.Fields)
  Dim i As Integer: i = 0
  Dim f As DAO.Field

  For Each f In tbFields
    CreateLabelTextBox frmName, f.name, 100, 100 + i * (240 + 50)
    i = i + 1
  Next
End Sub

Private Function BuildSingleFormTemplate(frmName As String)
  Dim frm As Form
  If FormManipulation.Exists(frmName) Then
    FormManipulation.CloseForm frmName
    FormManipulation.DeleteForm frmName
  End If
  FormManipulation.CreateStarterForm (frmName)
  Set frm = FormManipulation.DesignMode(frmName)
  Set BuildSingleFormTemplate = frm
End Function

Public Sub BuildSingleForm(queryName As String)
  Dim frm As Form
  Set frm = BuildSingleFormTemplate(queryName)
  
  Dim rstQueryName As DAO.Recordset
  Dim sql As String
  sql = "SELECT Top(1) * FROM " + queryName
  Set rstQueryName = Database.GetDBObject().Query(sql)
  
  DistributeTextBoxes frm.name, rstQueryName.Fields
  FormManipulation.SaveForm frm.name
End Sub
