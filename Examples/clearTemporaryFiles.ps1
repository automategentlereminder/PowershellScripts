Function Clear-TempFiles {
    $tempPath = [System.IO.Path]::GetTempPath()
    Remove-Item "$tempPath*" -Recurse -Force
    Write-Host "Cleared temporary files from '$tempPath'."
}

# Example: Clear temporary files
Clear-TempFiles
