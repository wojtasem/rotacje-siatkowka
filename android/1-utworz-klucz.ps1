# Tworzy klucz przesyłania (upload key) do podpisywania paczek dla Google Play.
# Uruchom RAZ. Hasło wpisujesz sam; zapamiętaj je i zrób kopię pliku upload.keystore poza tym folderem
# (np. na pendrive lub w menedżerze haseł). Plik jest w .gitignore i nie trafia na GitHuba.
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
$keytool = "C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe"
if (Test-Path "upload.keystore") { Write-Host "Klucz upload.keystore już istnieje - nic nie robię."; exit 1 }
& $keytool -genkeypair -v -keystore upload.keystore -alias upload -keyalg RSA -keysize 2048 -validity 10000 `
  -dname "CN=Wojciech Marynowski, C=PL"
Write-Host ""
Write-Host "Odcisk SHA-256 klucza (potrzebny do pliku assetlinks.json):"
& $keytool -list -v -keystore upload.keystore -alias upload | Select-String "SHA256:"
