Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$clipboard = [System.Windows.Forms.Clipboard]::GetImage()

if ($null -eq $clipboard) {
    Write-Host "There is no image on the clipboard"
    exit 1
}

$saveDir = [Environment]::GetFolderPath("UserProfile") + "\Downloads"
if (-not (Test-Path $saveDir)) {
    New-Item -ItemType Directory -Path $saveDir | Out-Null
}

$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$fileName = "clipboard_$timestamp.png"
$filePath = Join-Path $saveDir $fileName

$clipboard.Save($filePath, [System.Drawing.Imaging.ImageFormat]::Png)

Write-Host "done: $filePath"