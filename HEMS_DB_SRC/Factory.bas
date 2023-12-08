Attribute VB_Name = "Factory"
'@Folder("Interface")
Option Compare Database
Option Explicit

Public Function GetDBObject() As IHemsDB
  Set GetDBObject = New HemsDB
End Function

Public Property Get DBOject()
  Set DBOject = GetDBObject()
End Property

