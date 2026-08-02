param(
    [Parameter(Mandatory=$true)]
    [string]$Path,
    [string]$Format = "jpg"
)

if (-not (Test-Path $Path)) {
    Write-Host "パスが存在しません: $Path"
    exit 1
}

function Convert-One {
    param([string]$File)
    $out = [System.IO.Path]::ChangeExtension($File, $Format)
    magick "$File" "$out"
    Write-Host "done: $out"
}

if (Test-Path $Path -PathType Container) {
    Get-ChildItem -Path $Path -Filter "*.heic" -Recurse | ForEach-Object {
        Convert-One $_.FullName
    }
} else {
    Convert-One $Path
}