# Example: Naming a file with a timestamp
Function Create-FileWithTimestamp {
    param (
        [string]$baseName
    )
    $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
    $fileName = "$baseName_$timestamp.txt"
    New-Item -Path $fileName -ItemType File
    Write-Host "Created file: $fileName"
}
