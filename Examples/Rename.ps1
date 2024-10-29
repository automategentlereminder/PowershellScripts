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

Function Rename-FilesWithTimestamp {
    param (
        [string]$directoryPath
    )
    $files = Get-ChildItem -Path $directoryPath
    foreach ($file in $files) {
        $newName = "{0}_{1}{2}" -f $file.BaseName, (Get-Date -Format "yyyyMMdd_HHmmss"), $file.Extension
        Rename-Item -Path $file.FullName -NewName $newName
        Write-Host "Renamed '$($file.Name)' to '$newName'"
    }
}

# Example: Rename files in the specified directory
# Rename-FilesWithTimestamp "C:\SomeDirectory"

