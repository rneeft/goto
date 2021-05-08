# GOTO for PowerShell
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A simpel but helpful script that sets the current working location in PowerShell to a location of the specified label.

## How to install
Use the following commands to install the script
```powershell
# Download the source code
git clone https://github.com/rneeft/goto.git
# Remove the git connection (Optional)
Remove-Item .git -Recurse -Force
# Set execution policy to unrestricted to make sure the script may execute
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

Create a system variable with the name `GOTO_HOME` and as value the path of the location of the goto.ps1 file:
![image](https://user-images.githubusercontent.com/16198068/117542424-e275b280-b018-11eb-8569-2e4c980ea6fa.png)

Update the system environment variable `Path` and add the location of the folder. (for example: C:\git\goto)

## How to edit
run the command `goto edit-me` to open the script and add items to it
