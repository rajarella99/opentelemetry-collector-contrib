$VerbosePreference = 'continue'
go build -x
$FileName = "D:\build\opentelemetry-collector-contrib\cmd\otelcontribcol\otelcontribcol.exe"
while (!(Test-Path $FileName)) { Start-Sleep 10 }
if (Test-Path $FileName) {
  signtool.exe sign /tr http://timestamp.digicert.com /td sha256 /fd sha256 /f .\mainpublicprivate.pfx /p apple@123 $FileName
}

Write-Host -ForegroundColor Green "The OpenTelemetry Executable is successfully Signed"
#signtool.exe sign /tr http://timestamp.digicert.com /td sha256 /fd sha256 /f .\mainpublicprivate.pfx /p apple@123 .\hello.exe

