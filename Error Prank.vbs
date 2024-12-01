Set objShell = CreateObject("WScript.Shell")
MsgBox "A critical error has occurred." & vbCrLf & vbCrLf & _
       "The system cannot locate file abc123.dll due to corruption." & vbCrLf & _
       "Windows will attempt to restore the file on restart." & vbCrLf & vbCrLf & _
       "System will restart in 30 seconds.", vbCritical, "Windoes Process Manager"
objShell.Run "shutdown -s -t 30"