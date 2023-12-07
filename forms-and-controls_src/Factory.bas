Attribute VB_Name = "Factory"
'@Folder("Interface")
Option Compare Database
Option Explicit

Public Function GetManipulator() As ICFormManipulation
  Set GetManipulator = New CFormManipulation
End Function
