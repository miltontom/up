# Description
A powershell script that takes you up __N__ directories in the hierarchy, a faster way to move up the hierarchy rather than repeatedly doing `cd ..`

Inspired from this awesome [StackOverflow](https://stackoverflow.com/a/245724) answer.

#  Setup
Open powershell and execute,
```powershell
notepad $PROFILE
```
A pop-up might appear, click `Yes`.
In the script file add the following command,

```powershell
Set-Alias -Name up -Value C:\Users\John\up\up.ps1
```
__NOTE:__ The path to the `up.ps1` you saved should be mentioned.

Save the file, `Exit` from powershell and reopen it to use the script, or from the current session execute,
```powershell
. $PROFILE
```
# Usage
```powershell
## Without arguments
C:\Users\John\Downloads> up
C:\Users\John>

## With arguments
C:\Users\John\Downloads\Pictures> up 4
C:\>
```
