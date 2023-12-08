VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CustomerFormData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Invoice")
Option Compare Database
Option Explicit

Implements FormsAndControls.iFormData

Dim lCustomerId As Long
Dim lArgs() As Variant

Public Property Get Columns() As DAO.Fields
  Set Columns = IFormData_Records.Fields
End Property

Public Property Get FormName() As String
  FormName = "AddressCustomer"
End Property


' https://stackoverflow.com/questions/36313575/passing-an-array-of-arguments-to-callbyname-vba
Public Property Get Records() As DAO.Recordset
  'Set Records = Hems_EconDB.DBOject.FunctionQuery1("AddressCustomer", lCustomerId)
  lArgs = Array("AddressCustomer", lCustomerId)
  Set Records = CallByName(Hems_EconDB.DBOject, "FunctionQuery1", VbMethod, lArgs())
End Property


Public Property Let customerId(Id As Long)
  lCustomerId = Id
End Property




'------------ Interface implementation ---------------

Private Property Get IFormData_Columns() As DAO.Fields
  Set IFormData_Columns = Records.Fields
End Property

Private Property Get IFormData_FormName() As String
  IFormData_FormName = FormName

End Property

Private Property Get IFormData_Records() As DAO.Recordset
  Set IFormData_Records = Records()
End Property



