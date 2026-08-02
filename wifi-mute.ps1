# ここに許可したい SSID を列挙
$whitelist = @("TP-Link_7CFC", "AILab", "Yahoi")

# 現在の SSID を取得
$ssid = (netsh wlan show interfaces) |
    Select-String '^\s+SSID\s+:\s+(.+)$' |
    ForEach-Object { $_.Matches.Groups[1].Value.Trim() } |
    Select-Object -First 1

# 音量制御（nircmd を使う場合）
$nircmd = "C:\Windows\System32\nircmd.exe"

if ($whitelist -contains $ssid) {
    & $nircmd mutesysvolume 0   # ミュート解除
} else {
    & $nircmd mutesysvolume 1   # ミュート
}