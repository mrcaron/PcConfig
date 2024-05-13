~\Documents\WindowsPowerShell\Scripts\Invoke-Batchfile.ps1

# load VS 2022 into environment
function global:Invoke-VS2019Env {
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
    set-poshprompt ~/.mytheme.omp.json
}
function light {
    set-poshprompt ~/.mytheme.omp.light.json
}
function amro {
    set-poshprompt $env:POSH_THEMES_PATH\amro.omp.json
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

oh-my-posh init pwsh --config ~/star.omp.json | Invoke-Expression

