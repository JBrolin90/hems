Attribute VB_Name = "dbSecret"
'@IgnoreModule UseMeaningfulName, ConstantNotUsed
'@Folder("Database")
Option Compare Database
Option Explicit
Option Private Module

Private Const connectionString0 As String = "ODBC;DRIVER=ODBC Driver 17 for SQL Server;SERVER=LAPTOP-D7UOP2EG\SQLEXPRESS;Trusted_Connection=No;APP=Microsoft Office;DATABASE=HEMS_Econ;UID=sa;PWD=Sqlserver2023"
Private Const connectionString1 As String = "ODBC;DRIVER=ODBC Driver 17 for SQL Server;SERVER=VICTOR\SQLEXPRESS;Trusted_Connection=No;APP=Microsoft Office;DATABASE=HEMS_Econ;UID=sa;PWD=Sqlserver2023"
Private Const connectionString2 As String = "ODBC;DRIVER=SQL Server;SERVER=VICTOR\SQLEXPRESS;Trusted_Connection=No;APP=Microsoft Office;DATABASE=HEMS_Econ;UID=sa;PWD=Sqlserver2023"
Private Const connectionString3 As String = "ODBC;DRIVER=SQL Server;SERVER=VICTOR\SQLEXPRESS;Trusted_Connection=Yes;APP=Microsoft Office;DATABASE=HEMS_Econ"

Public Const connectionString As String = connectionString0

