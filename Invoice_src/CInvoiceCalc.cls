VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CInvoiceCalc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'@Folder "Invoice"
Option Compare Database
Option Explicit

Private rstItems As DAO.Recordset
Private mHours As Double
Private mTotal As Currency
Private mNet As Currency
Private mVAT As Currency
Private mRUT As Currency
Private mCustomer As CCustomer

Public Sub Calculate(inCustomerId As Long, inYear As Long, inMonth As Long, inCredit As Boolean, inRUT As Boolean, inROT As Boolean)
  Dim sql As String
  mHours = 0
  mTotal = 0
  mNet = 0
  mVAT = 0
  mRUT = 0
  Set mCustomer = New CCustomer
  mCustomer.CustomerID inCustomerId
  
  sql = "SELECT * FROM Schedules WHERE CustomerID= " & inCustomerId & " and " & _
            "Month(StartTimePLanned) = " & inMonth & " AND Year(StartTimePLanned) = " & inYear
      If inCredit = True Then
        sql = sql & " AND PricePerHour < 0 "
      Else
        sql = sql & " AND PricePerHour >= 0 "
      End If
      If inRUT = True Then
        sql = sql & " AND RUT = 1 "
      ElseIf inROT = True Then
        sql = sql & " AND ROT = 1 "
      Else
        sql = sql & " AND ROT = 0 AND RUT = 0 "
      End If
  sql = sql & " Order BY StartTimePlanned"
  
  Set rstItems = db.connection.OpenRecordset(sql, dbOpenDynaset, dbSeeChanges)
  If Not rstItems.EOF Then
    rstItems.MoveLast
    rstItems.MoveFirst
    If mCustomer.RUT Then
      CalcTotals
    Else
      CalculatePlusVAT
    End If
  Else
    mErr.LogRaise "Calculate, no items found", "CInvoiceCalc"
  End If
End Sub

Private Sub CalculatePlusVAT()
  Dim Count As Long
  Dim i As Long
  Beginning
  Count = rstItems.RecordCount
  For i = 1 To Count
    mHours = mHours + rstItems!DurationPlanned
    mTotal = mTotal + rstItems!DurationPlanned * rstItems!PricePerHour
    mNet = mTotal
    mVAT = mVAT + rstItems!DurationPlanned * rstItems!PricePerHour * 0.25
    rstItems.MoveNext
  Next
  Beginning
End Sub

Private Sub CalcTotals()
  Dim Count As Long
  Dim i As Long
  Beginning
  Count = rstItems.RecordCount
  For i = 1 To Count
    mHours = mHours + rstItems!DurationPlanned
    mTotal = mTotal + rstItems!DurationPlanned * rstItems!PricePerHour
    mNet = mNet + rstItems!DurationPlanned * rstItems!PricePerHour * 0.8
    mVAT = mVAT + rstItems!DurationPlanned * rstItems!PricePerHour * 0.2
    If rstItems!RUT Or rstItems!ROT Then
      mRUT = mRUT + rstItems!DurationPlanned * rstItems!PricePerHour * 0.8
      mVAT = mVAT + rstItems!DurationPlanned * rstItems!PricePerHour * 0.2
    End If
  rstItems.MoveNext
  Next
  Beginning
End Sub

Public Property Get AmountTotal() As Currency
  AmountTotal = mTotal
End Property

Public Property Get VAT() As Currency
  VAT = mVAT
End Property
Public Property Get RUT() As Currency
  RUT = mRUT
End Property
Public Property Get Net() As Currency
  Net = mNet
End Property

Public Property Get HoursTotal() As Double
  HoursTotal = mHours
End Property

Public Sub Beginning()
  If Not rstItems.BOF Then
    rstItems.MoveFirst
  End If
End Sub

Public Function NextItem() As Boolean
  If Not rstItems.EOF Then
    rstItems.MoveNext
  End If
  NextItem = Not rstItems.EOF
End Function

Public Property Get CurrentHours() As Double
  CurrentHours = rstItems!DurationPlanned
End Property

Public Property Get CurrentAmount() As Currency
  CurrentAmount = rstItems!PricePerHour * rstItems!DurationPlanned
End Property

Public Property Get ItemDate() As Date
  ItemDate = rstItems!StartTimePlanned
End Property
Public Property Get ItemStart() As Date
  ItemStart = rstItems!StartTime
End Property
Public Property Get ItemEnd() As Date
  ItemEnd = rstItems!EndTime
End Property
Public Property Get CurrentPrice() As Double
  CurrentPrice = rstItems!PricePerHour
End Property

Public Property Get ItemJob() As String
  ItemJob = DLookup("JobName", "Jobs", "ID = " & rstItems!Job)
End Property

