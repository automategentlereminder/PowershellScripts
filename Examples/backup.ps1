Function Backup-Directory {
    param (
        [string]$source,
        [string]$destination
    )
    Copy-Item -Path $source -Destination $destination -Recurse -Force
    Write-Host "Backup completed from '$source' to '$destination'."
}

# Example: Backup a directory
# Backup-Directory "C:\OriginalFolder" "D:\BackupFolder"
