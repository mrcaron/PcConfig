# Introduction 
This repository helps me setup a new windows box. Maybe it will help others, but this is specific to my development needs. 

## Getting Started

1. Open a command line to `C:\users\<USERNAME>\` directory (usually corresponds to `$HOME`)
2. Enter `git init` to create a _new_ git repo there
2. Copy the remote url for this repo to your clipboard
3. Back in the command line, enter `git add remote origin <URL>` where `<URL>` is from your clipboard
4. Enter `git pull origin master`
5. Open a new administrator powershell prompt
   1. change directory to your home
   2. run the `install_chocolatey.ps1` to install Chocolatey
   3. close and reopen this admin prompt
   4. run the `Box_Starter.ps1` script to install everything

## Special NOTE

When on a windows box behind a VPN, I found [this tool](https://github.com/sakai135/wsl-vpnkit) handy. Wasn't able to
use the internet from WSL2, but after applying that, I could.
