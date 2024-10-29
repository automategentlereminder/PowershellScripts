Function Open-Application {
    param (
        [string]$appPath
    )
    Start-Process -FilePath $appPath
    Write-Host "Opened application: $appPath"
}

# Example: Open Notepad
Open-Application "notepad.exe"
