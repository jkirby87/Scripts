# This will keep your windows machine awake indefinately, or atleaast untill you close the powershell window.
Function caffine {
    $wsh = New-Object -ComObject Wscript.Shell
    WHILE($TRUE){
        $wsh.SendKeys("{SCROLLLOCK}")
        $wsh.SendKeys("{SCROLLLOCK}")
        START-SLEEP -Seconds 200
    }
}
