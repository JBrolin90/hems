VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CInvoice2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder("Invoice")
Option Compare Database
Option Explicit

Private Year As Integer
Private Month As Integer
Private customerId As Integer

Private rstCustomer As DAO.Recordset
Private rstInvoiceItemValues As DAO.Recordset
Private rstInvoiceTotalsIncVAT As DAO.Recordset
Private rstInvoiceTotalsExVAT As DAO.Recordset

Public Property Get customer() As DAO.Recordset
  Set customer = rstCustomer
End Property
Public Property Get ItemValues() As DAO.Recordset
  Set ItemValues = rstInvoiceItemValues
End Property
Public Property Get TotalsIncVAT() As DAO.Recordset
  Set TotalsIncVAT = rstInvoiceTotalsIncVAT
End Property
Public Property Get TotalsExVAT() As DAO.Recordset
'  Set TotalsExVAT = rstInvliceTotalsExVAT
End Property

Public Sub Init(inYear As Integer, inMonth As Integer, inCustomerId As Integer)
  Year = inYear
  Month = inMonth
  customerId = inCustomerId
  
  InitCustomer
  InitInvoiceItemValues
  InitInvoiceTotalsIncVAT
  InitInvoiceTotalsExVAT
End Sub

Private Sub InitCustomer()
'  Set rstCustomer = mInvoice.GetCustomer(customerID)
End Sub

Private Sub InitInvoiceItemValues()
'  Set rstInvoiceItemValues = mInvoice.GetInvoiceItemValues(Year, Month, customerID)
End Sub
Private Sub InitInvoiceTotalsIncVAT()
'  Set rstInvoiceTotalsIncVAT = mInvoice.GetInvoiceTotalsIncVAT(Year, Month, customerID)
End Sub
Private Sub InitInvoiceTotalsExVAT()
'  Set rstInvoiceTotalsExVAT = mInvoice.GetInvoiceTotalsExVAT(Year, Month, customerID)
End Sub

