param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$Target,

    [Parameter(Position = 1)]
    [int]$RemotePort = 80,

    [Parameter(Position = 2)]
    [string]$LocalHost = "localhost"
    
)

$LocalPort = $RemotePort

Write-Host "Forwarding ${LocalHost}:${LocalPort} -> ${Target}:${RemotePort}"
Write-Host "Press Ctrl+C to stop."

ssh -N -L "${LocalHost}:${LocalPort}:localhost:${RemotePort}" $Target