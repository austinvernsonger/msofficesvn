Attribute VB_Name = "cmnIniFile"
'------------------- Copy & paste from here to the cmnIniFile module of add-in file --------------------
' $Rev$
' Copyright (C) 2008 Koki Yamamoto <kokiya@gmail.com>
'     All rights reserved.
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' :$Date::                           $
' :Author:        Koki Yamamoto <kokiya@gmail.com>
' :Module Name:   cmnIniFile
' :Description:   Access ini file for this add-in
'                 Common module through office application software.

Option Explicit

' :Function: Get numeric value from INI file
' :Remarks:  Declaration of Windows API
Public Declare Function GetPrivateProfileInt Lib "kernel32" _
                         Alias "GetPrivateProfileIntA" _
                         (ByVal lpApplicationName As String, _
                          ByVal lpKeyName As String, _
                          ByVal nDefault As Long, _
                          ByVal lpFileName As String) As Long

' :Function: Get string from INI file
' :Remarks:  Declaration of Windows API
Public Declare Function GetPrivateProfileString Lib "kernel32" _
                         Alias "GetPrivateProfileStringA" _
                         (ByVal lpApplicationName As String, _
                          ByVal lpKeyName As Any, _
                          ByVal lpDefault As String, _
                          ByVal lpReturnedString As String, _
                          ByVal nSize As Long, _
                          ByVal lpFileName As String) As Long

' :Function: Write string to INI file
' :Remarks:  Declaration of Windows API
Public Declare Function WritePrivateProfileString Lib "kernel32" _
                         Alias "WritePrivateProfileStringA" _
                         (ByVal lpApplicationName As String, _
                          ByVal lpKeyName As Any, _
                          ByVal lpString As Any, _
                          ByVal lpFileName As String) As Long


' :Function: Get ini file full path name.
Public Function GetIniFileFullPath() As String
  GetIniFileFullPath = GetThisAddInPath & "\" & gIniFileName
End Function

