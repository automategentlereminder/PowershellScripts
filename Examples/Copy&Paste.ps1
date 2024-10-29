# Example: Copying and pasting
Function CopyAndPasteExample {
    # Simulate Ctrl + C (copy)
    Send-KeyStroke "^c"
    Write-Host "Simulated Ctrl + C to copy."

    # Simulate Alt + Tab to switch application
    Send-KeyStroke "%{TAB}"
    Write-Host "Switched application with Alt + Tab."
    Do-Sleep

    # Simulate Ctrl + V (paste)
    Send-KeyStroke "^v"
    Write-Host "Simulated Ctrl + V to paste."
}

# Call the functions to demonstrate their usage
Navigate-Directory "C:\SomeDirectory"  # Change to your desired directory
Create-FileWithTimestamp "MyFile"
CopyAndPasteExample
