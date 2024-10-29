# Load necessary assemblies for Windows Forms
Add-Type -AssemblyName System.Windows.Forms

# Function to send keystrokes
Function Send-KeyStroke {
    param (
        [string]$key
    )
    [System.Windows.Forms.SendKeys]::SendWait($key)
}

# Example: Sending keystrokes
Send-KeyStroke "A"
Write-Host "Sent keystroke 'A'."

Send-KeyStroke "^A"  # Simulate Ctrl + A
Write-Host "Simulated Ctrl + A."

Send-KeyStroke "%{A}"  # Simulate Alt + A
Write-Host "Simulated Alt + A."
