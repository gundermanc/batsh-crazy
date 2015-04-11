Sub Main()

    ' Check for input command
    If WScript.Arguments.length = 0 Then
       PrintHelp()
    End If

    Select Case WScript.Arguments.Item(0)

        Case "info"
            MessageBox(64)
        Case "warning"
            MessageBox(48)
        Case "error"
            MessageBox(16)
        Case Else
            PrintHelp()
    End Select
End Sub

Sub MessageBox(buttons)
    If WScript.Arguments.length <> 3 Then
        PrintHelp()
    End If

    MsgBox WScript.Arguments.Item(1), buttons, WScript.Arguments.Item(2) 

End Sub

Sub PrintHelp()
    WScript.Echo("Batsh Crazy Win32 Dialog VBS Script")
    WScript.Quit(-1)
End Sub

Main()