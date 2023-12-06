Attribute VB_Name = "CreateFormTest"
'@TestModule
'@Folder("Tests")

Option Compare Database

Option Explicit
Option Private Module

Private Assert As Object
Private Fakes As Object

'@ModuleInitialize
Private Sub ModuleInitialize()
    'this method runs once per module.
    Set Assert = CreateObject("Rubberduck.AssertClass")
    Set Fakes = CreateObject("Rubberduck.FakesProvider")
End Sub

'@ModuleCleanup
Private Sub ModuleCleanup()
    'this method runs once per module.
    Set Assert = Nothing
    Set Fakes = Nothing
End Sub

'@TestInitialize
Private Sub TestInitialize()
    'This method runs before every test in the module..
End Sub

'@TestCleanup
Private Sub TestCleanup()
    'this method runs after every test in the module.
End Sub

'@TestMethod("Uncategorized")
Private Sub TestMethod1()                        'TODO Rename test
    On Error GoTo TestFail
    
    'Arrange:
    Dim formName As String
    Dim obj As AccessObject
    Dim frm As Form
    'Act:
    formName = "TestMethod1Form"
    Set frm = CreateStarterForm(formName)
    Set obj = CurrentProject.AllForms(formName)
    Set frm = DesignMode(formName)
    Set frm = FormMode(formName)
    CloseForm formName
    DeleteForm formName
    'Assert:
    Assert.Succeed

TestExit:
    '@Ignore UnhandledOnErrorResumeNext
    On Error Resume Next
    
    Exit Sub
TestFail:
    Assert.Fail "Test raised an error: #" & Err.Number & " - " & Err.Description
    Resume TestExit
End Sub
