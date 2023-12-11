Attribute VB_Name = "Factory"
'@Folder "Abstract"
Option Compare Database
Option Explicit

Public Function GetDBObject() As IHemsDB
  Set GetDBObject = New HemsDB
End Function

Public Property Get DBOject() As IHemsDB
  Set DBOject = GetDBObject()
End Property

