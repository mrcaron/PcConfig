~\Documents\WindowsPowerShell\Scripts\Invoke-Batchfile.ps1

# load VS 2022 into environment
function global:Invoke-VS2022Env {
    invoke-batchfile "C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\Tools\VsDevCmd.bat"
}
# load VS 2019 into environment
function global:Invoke-VS2019Env {
    invoke-batchfile "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\VsDevCmd.bat"
}
function global:Invoke-VS2017Env {
    invoke-batchfile "C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\Common7\Tools\VsDevCmd.bat"
}
function dark {
    . ~\Documents\Powershell\Microsoft.Powershell_profile.dark.ps1;
}
function light {
    . ~\Documents\Powershell\Microsoft.Powershell_profile.light.ps1;
}


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Invoke-Expression (oh-my-posh --init --shell pwsh)
Set-PoshPrompt -Theme ~/.mytheme.omp.light.json
