# Buduje podpisaną paczkę app-release.aab do wysłania w Google Play Console.
# Przed kolejną wersją podbij appVersionCode (o 1) i appVersionName w twa-manifest.json oraz app/build.gradle.
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
$env:JAVA_HOME = "C:\Program Files\Android\Android Studio\jbr"
if (-not (Test-Path "upload.keystore")) { Write-Host "Brak upload.keystore - najpierw uruchom 1-utworz-klucz.ps1"; exit 1 }

.\gradlew.bat bundleRelease --no-daemon
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$aab = "app\build\outputs\bundle\release\app-release.aab"
Copy-Item $aab "app-release.aab" -Force
& "$env:JAVA_HOME\bin\jarsigner.exe" -keystore upload.keystore -sigalg SHA256withRSA -digestalg SHA-256 app-release.aab upload
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host ""
Write-Host "Gotowe: $PSScriptRoot\app-release.aab - wyślij ten plik w Play Console."
