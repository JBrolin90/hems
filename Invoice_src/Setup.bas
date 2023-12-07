Attribute VB_Name = "Setup"
'@Folder("Setup")
Option Compare Database
Option Explicit

Public Sub BuildAddressCustomerForm()
  FormsAndCOntrols.Factory.GetManipulator().BuildSingleForm "AddressCustomers"
End Sub

Public Sub FillForm()
  Dim rstAddressCustomer As DAO.Recordset
  Dim x As Variant
  Dim f As DAO.Field
  Dim frmAddr
  Set rstAddressCustomer = Database.GetDBObject().FunctionQuery1("AddressCustomer", 1)
  x = rstAddressCustomer.Fields(1).Value
  Set frmAddr = FormsAndCOntrols.Factory.GetManipulator().FormMode("AddressCustomers")
  For Each f In rstAddressCustomer.Fields
    x = f.Value
    frmAddr.Controls("tb_" + f.Name) = x
    Debug.Print f.Name + " " + CStr(x)
  Next
End Sub
