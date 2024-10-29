# Looping is most important, as you may want to repeat thing for 200 or 500 times in real world scnarios


# Example: Looping actions
for ($i = 1; $i -le 500; $i++) {  # Adjust the limit as needed
    Write-Host "Loop iteration: $i"
    # Add any actions to perform in each iteration here
    Do-Sleep
}
