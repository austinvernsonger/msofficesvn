Attribute VB_Name = "ThisAddIn"
'------------------- Copy & paste from here to the ThisAddIn module of wordsvn.dot --------------------
' $Rev: 294 $
' Copyright (C) 2008 Koki Yamamoto <kokiya@gmail.com>
'     This is free software with ABSOLUTELY NO WARRANTY.
'
' You can redistribute it and/or modify it under the terms of
' the GNU General Public License version 2.
'
' :$Date:: 2008-05-24 19:41:57 +0900#$
' :Author:      Koki Yamamoto <kokiya@gmail.com>
' :Module Name: ThisAddIn
' :Description: Manage ini file for wordsvn.dot

Option Explicit

Public Const gIniFileName As String = "wordsvn.ini"

' :Function: Get this add-in path.
Public Function GetThisAddInPath() As String
  GetThisAddInPath = ThisDocument.Path
End Function

' :Function: Debug subroutine to call from VBA workbench
Sub StartLockStatusCheckTimer()
  gbLockStatusCheckOn = True
  gAutoLockCheckInterval = GetAutoLockCheckIntervalStr
  LockStatusCheckTimer
End Sub
