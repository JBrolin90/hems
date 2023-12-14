Attribute VB_Name = "TWIPS"
'@Folder("Tests")
Option Compare Database

Public Function WH_ITwipsFromFont()

    Dim FontName As String
    Dim Size As Long
    Dim Weight As Long
    Dim Italic As Boolean
    Dim Underline As Boolean
    Dim Cch As Long
    Dim Caption As String
    Dim MaxWidthCch As Long
    Dim dx As Long
    Dim dy As Long

    FontName = "Terminal"
    Size = 10
    Weight = 400
    Italix = False
    Underline = False
    Caption = "Hello World"
    WizHook.Key = 51488399
    Dim result As Boolean
    result = WizHook.TwipsFromFont(FontName, Size, Weight, Italic, Underline, Cch, Caption, MaxWidthCch, dx, dy)
    Debug.Print WizHook.TwipsFromFont(FontName, Size, Weight, Italic, Underline, Cch, Caption, MaxWidthCch, dx, dy)
    Debug.Print "dx: " & dx
    Debug.Print "dy: " & dy


End Function


