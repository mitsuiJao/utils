# push.ps1
param(
    [Parameter(Mandatory=$true, Position=0)][string]$Target,
    [Parameter(Mandatory=$true, Position=1)][string]$LocalPath
)
$RemoteDir = "~/uploads"
scp -r "$LocalPath" "${Target}:${RemoteDir}/"