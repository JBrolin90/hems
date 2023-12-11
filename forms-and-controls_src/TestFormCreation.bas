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
  Dim addressCustomerFormData As MyFormData
  Set addressCustomerFormData = Factory.BuildFormData("Customers")
  Factory.BuildManipulator().BuildSingleForm addressCustomerFormData
End Sub

