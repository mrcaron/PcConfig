# update powershell get
powershell.exe -NoLogo -NoProfile -Command '[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Install-Module -Name PackageManagement -Force -MinimumVersion 1.4.6 -Scope CurrentUser -AllowClobber -Repository PSGallery'

# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# install Scoop (for oh my posh)
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

# restart shell

cinst oh-my-posh -y
cinst pwsh -y
cinst vscode -ya
cinst firacode -y
cinst firacodenf -y
cinst windirstat -y
cinst git-lfs -y
cinst discord -y
cinst microsoft-teams -y
cinst 1password -y
cinst mRemoteNG -y

# get latest dotnet
cinst dotnet -y
cinst dotnet-sdk -y

# get Node Version Manager
cinst nvm -y

Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease