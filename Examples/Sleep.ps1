# Function to introduce a delay between actions
Function Do-Sleep {
    Start-Sleep -Milliseconds 500 # Adjust delay as needed
}

# Function to introduce a longer delay between actions
Function More-Sleep {
    Start-Sleep -Milliseconds 3500 # Adjust delay as needed
}

# Example: Sleep functions in action
Do-Sleep
Write-Host "Waited for 500 milliseconds."
More-Sleep
Write-Host "Waited for 3500 milliseconds."
