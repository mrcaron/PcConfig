~\Documents\WindowsPowerShell\Scripts\Invoke-Batchfile.ps1

# load VS 2019 into environment
function global:Invoke-VS2019Env {
    invoke-batchfile "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"
}
function global:Invoke-VS2017Env {
    invoke-batchfile "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsDevCmd.bat"
}
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Set-PoshPrompt -Theme ~/.mytheme.omp.json
