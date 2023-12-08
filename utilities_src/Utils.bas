Attribute VB_Name = "Utils"
'@Folder("Utilities")
Option Compare Database
Option Explicit

' https://stackoverflow.com/questions/36313575/passing-an-array-of-arguments-to-callbyname-vba

#If VBA7 Or Win64 Then
  Private Declare PtrSafe Function rtcCallByName Lib "VBE7.DLL" ( _
    ByVal Object As Object, _
    ByVal ProcName As LongPtr, _
    ByVal CallType As VbCallType, _
    ByRef args() As Any, _
    Optional ByVal lcid As Long) As Variant
#Else
  Private Declare Function rtcCallByName Lib "VBE6.DLL" ( _
    ByVal Object As Object, _
    ByVal ProcName As Long, _
    ByVal CallType As VbCallType, _
    ByRef args() As Any, _
    Optional ByVal lcid As Long) As Variant
#End If


Public Function CallByName2(Object As Object, ProcName As String, args() As Variant)
   AssignResult CallByName2, rtcCallByName(Object, StrPtr(ProcName), VbMethod, args)
End Function

Private Sub AssignResult(target, result)
  If VBA.IsObject(result) Then Set target = result Else target = result
End Sub


Sub UsageExample()
  Dim obj As Object, arguments()

  Set obj = New Class1
  arguments = Array(1, 3)

  CallByName2 obj, "MyMethod", arguments
End Sub
