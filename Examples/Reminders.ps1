Function Set-Reminder {
    param (
        [string]$message,
        [int]$delayMinutes
    )
    Start-Sleep -Minutes $delayMinutes
    [System.Windows.Forms.MessageBox]::Show($message, "Reminder")
    Write-Host "Reminder: $message"
}

# Example: Set a reminder
# Set-Reminder "Time for your meeting!" 10
