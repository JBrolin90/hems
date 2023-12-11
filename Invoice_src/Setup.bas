Attribute VB_Name = "Setup"
'@Folder("Setup")
Option Compare Database
Option Explicit

Public Sub BuildAddressCustomerForm()
  Dim formData As FormsAndControls.iFormData
  Set formData = FormsAndControls.Factory.BuildFormData("AddressCustomer", 0)
  FormsAndControls.Factory.BuildManipulator().BuildSingleForm formData
End Sub

Public Sub FillAddressCustomerForm(customerId As Long)
  Dim formData As FormsAndControls.iFormData
  Set formData = FormsAndControls.Factory.BuildFormData("AddressCustomer", customerId)
  FillForm formData
End Sub


Public Sub BuildCustomersToInvoiceForm()
  Dim formData As FormsAndControls.iFormData
  Set formData = FormsAndControls.Factory.BuildFormData("CustomersToInvoice", 2023, 10)
  FormsAndControls.Factory.BuildManipulator().BuildSingleForm formData
End Sub

Public Sub FillCustomersToInvoiceForm(year As Long, month As Long)
  Dim formData As FormsAndControls.iFormData
  Set formData = FormsAndControls.Factory.BuildFormData("CustomersToInvoice", year, month)
  FillForm formData
End Sub

Private Sub FillForm(ByVal formData As iFormData)
  Dim frmAddr As Form
  Set frmAddr = FormsAndControls.Factory.BuildManipulator().FormMode(formData.FormName)
  Dim f As DAO.Field
  For Each f In formData.Columns
      frmAddr.Controls("tb_" + f.Name) = CStr(f.Value)
      Debug.Print f.Name + ": " + CStr(f.Value)
  Next
End Sub

Public Sub TestArgs(ParamArray args() As Variant)
  Debug.Print "LBound: " + CStr(LBound(args)) + " UBound: " + CStr(UBound(args))
End Sub
