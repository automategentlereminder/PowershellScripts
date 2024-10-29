# Load necessary assemblies for Windows Forms
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


# Function to take a screenshot and save it
Function Take-Screenshot {
    param (
        [string]$fileName
    )
    $bounds = [System.Windows.Forms.Screen]::PrimaryScreen.Bounds
    $bmp = New-Object System.Drawing.Bitmap($bounds.Width, $bounds.Height)
    $graphics = [System.Drawing.Graphics]::FromImage($bmp)
    $graphics.CopyFromScreen($bounds.Left, $bounds.Top, 0, 0, $bounds.Size)
    $bmp.Save($fileName)
}

# Example: Taking a screenshot
Take-Screenshot "C:\Screenshots\screenshot.png"
Write-Host "Screenshot taken and saved as screenshot.png"

