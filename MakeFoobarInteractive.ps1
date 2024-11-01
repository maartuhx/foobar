$processName = "foobar2000"
$foobar2000exe = "C:\Program Files (x86)\foobar2000\foobar2000.exe"

$process = Get-Process -Name $processName | Where-Object {$_.SessionId -eq 0} #check if process is not running interactive

if ($process){
    Stop-Process -Name $processName -Force
    Start-Process -FilePath $foobar2000exe
}