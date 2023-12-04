Attribute VB_Name = "Functions"
'@Folder("Database")
Option Compare Database
Option Explicit

Public Function GetDBObject() As IHemsDB
  Set GetDBObject = New HemsDB
End Function

