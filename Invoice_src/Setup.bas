Attribute VB_Name = "Setup"
'@Folder("Setup")
Option Compare Database
Option Explicit

Public Sub BuildAddressCustomerForm()
  FormsAndControls.Factory.GetManipulator().BuildSingleForm New CustomerFormData
End Sub

Public Sub FillAddressCustomerForm(customerId As Long)
  Dim formData As New CustomerFormData
  formData.customerId = customerId
  FillForm formData
End Sub

Private Sub FillForm(ByVal formData As iFormData)
  Dim frmAddr As Form
  Set frmAddr = FormsAndControls.Factory.GetManipulator().FormMode(formData.FormName)
  Dim f As DAO.Field
  For Each f In formData.Columns
      frmAddr.Controls("tb_" + f.Name) = CStr(f.Value)
      Debug.Print f.Name + ": " + CStr(f.Value)
  Next
End Sub

Public Sub TestArgs(ParamArray args() As Variant)
  Debug.Print "LBound: " + CStr(LBound(args)) + " UBound: " + CStr(UBound(args))
End Sub
