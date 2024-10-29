# Example: File directory navigation
Function Navigate-Directory {
    param (
        [string]$path
    )
    Set-Location -Path $path
    Write-Host "Navigated to $path"
}
