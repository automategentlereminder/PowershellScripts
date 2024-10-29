Function Check-DiskSpace {
    param (
        [string]$driveLetter
    )
    $drive = Get-PSDrive -Name $driveLetter
    Write-Host "Drive: $driveLetter - Used Space: $([math]::round($drive.Used/1GB,2)) GB, Free Space: $([math]::round($drive.Free/1GB,2)) GB"
}

# Example: Check C drive space
Check-DiskSpace "C"
