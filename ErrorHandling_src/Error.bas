Attribute VB_Name = "Error"
'@Folder("Database")
Option Compare Database
Option Explicit


'https://stackoverflow.com/questions/1038006/what-are-some-good-patterns-for-vba-error-handling
'https://codereview.stackexchange.com/questions/94415/try-catch-statement-in-vba-using-the-standard-vba-error-handling-statements

Public Sub ErrorTemplate()
On Error GoTo CatchAndFinally

CatchAndFinally:
'Clean up here...

If Err.Number <> 0 Then 'Handle the error
  'ReRaise theError
  Err.Raise Err.Number, Err.Source, Err.Description, Err.HelpContext
  'Or fix the error
  ' ....
End If
End Sub
