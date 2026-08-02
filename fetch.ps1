# fetch.ps1
param(
    [Parameter(Mandatory=$true)][string]$Target,
    [Parameter(Mandatory=$true)][string]$RemotePath
)

$LocalDir = "C:\Users\nishi\Downloads"

scp -r "${Target}:${RemotePath}" "$LocalDir"