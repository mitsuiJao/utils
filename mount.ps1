@PowerShell -NoProfile -ExecutionPolicy Bypass "&([ScriptBlock]::Create((cat \"%~f0\" | ?{$_.ReadCount -gt 1}) -join \"`n\"))" %* & pause & goto:eof

Start-Process powershell -verb runas
wsl --mount \\.\PHYSICALDRIVE1 --bare
wsl --mount \\.\PHYSICALDRIVE1 --partition 2
pause