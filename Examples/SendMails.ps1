Function Send-Email {
    param (
        [string]$smtpServer,
        [string]$from,
        [string]$to,
        [string]$subject,
        [string]$body
    )
    
    $message = New-Object System.Net.Mail.MailMessage
    $message.From = $from
    $message.To.Add($to)
    $message.Subject = $subject
    $message.Body = $body
    
    $smtp = New-Object Net.Mail.SmtpClient($smtpServer)
    $smtp.Send($message)
    
    Write-Host "Email sent from $from to $to with subject '$subject'."
}

# Example: Sending an email
# Uncomment the line below and fill in your details
# Send-Email -smtpServer "smtp.example.com" -from "your@example.com" -to "recipient@example.com" -subject "Test Email" -body "This is a test email."
