Powershell Unblock-File -Path c:\organizador.ps1
PowerShell -Command "Set-ExecutionPolicy Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1
PowerShell c:\users\organizador.ps1 >> "%TEMP%\StartupLog.txt" 2>&1