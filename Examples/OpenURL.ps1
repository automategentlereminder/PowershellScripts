Function Open-URL {
    param (
        [string]$url
    )
    Start-Process $url
    Write-Host "Opened URL: $url"
}

# Example: Open Google
Open-URL "https://www.google.com"
