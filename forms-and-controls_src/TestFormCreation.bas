Attribute VB_Name = "TestFormCreation"
'@Folder("Tests")
Option Compare Database
Option Explicit

Public Sub CreateAddressCustomerForm()
  Dim addressCustomerFormData As MyFormData
  Set addressCustomerFormData = Factory.BuildFormData("AddressCustomer", 1)
  Factory.BuildManipulator().BuildSingleForm addressCustomerFormData
End Sub

Public Sub CreateCustomersForm()
  Dim CustomersFormData As MyFormData
  Set CustomersFormData = Factory.BuildFormData("Customers")
  Populate.BuildContinuousForm CustomersFormData
  'Factory.BuildManipulator().BuildSingleForm addressCustomerFormData
End Sub

Public Sub CreateConinuousForm(formName As String)
  Dim CustomersFormData As MyFormData
  Set CustomersFormData = Factory.BuildFormData(formName, 2023, 10, 2)
  Populate.BuildContinuousForm CustomersFormData
  'Factory.BuildManipulator().BuildSingleForm addressCustomerFormData
End Sub

Public Sub FillCustomersForm()
  Dim CustomersFormData As MyFormData
  Set CustomersFormData = Factory.BuildFormData("Customers")
  
  Dim frm As Form
  Set frm = FormManipulation.FormMode("Customers")
  Set frm.Recordset = CustomersFormData.Records
  Dim field As DAO.field
  For Each field In CustomersFormData.Columns
    Dim c As TextBox
    Set c = frm.Controls(Controls.TextBoxPrefix + field.name)
    c.ControlSource = field.name
  Next
End Sub

Public Sub FillContinuousForm(formName As String)
  Dim CustomersFormData As MyFormData
  Set CustomersFormData = Factory.BuildFormData(formName, 2023, 10, 1)
  
  Dim frm As Form
  Set frm = FormManipulation.FormMode(formName)
  Set frm.Recordset = CustomersFormData.Records
  Dim field As DAO.field
  For Each field In CustomersFormData.Columns
    Dim c As TextBox
    Set c = frm.Controls(Controls.TextBoxPrefix + field.name)
    c.ControlSource = field.name
  Next
  Dim fs As DAO.fields
  frm.Recordset.MoveFirst
  Dim i As Long
  For i = 0 To 1
    Set fs = frm.Recordset.fields
    Dim f As DAO.field
    Dim left As Long: left = 100
    For Each f In fs
      left = 30 + ControlsExtension.AutoFitPair(left, frm.Controls(Controls.TextBoxPrefix + f.name), frm.Controls(Controls.LabelPrefix + f.name))
    Next
    frm.Recordset.MoveNext
  Next
End Sub

