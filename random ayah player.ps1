$url = "http://api.alquran.cloud/v1/ayah/$((Get-Random -Minimum 1 -Maximum 6236))/ar.alafasy"
$response = Invoke-RestMethod -Uri $url -Method Get
$ayahUrl = $response.data.audio
Write-Output "Playing Random Quranic Ayah: $ayah"
Start-Process "C:\Program Files\VideoLAN\VLC\vlc.exe" -ArgumentList $ayahUrl