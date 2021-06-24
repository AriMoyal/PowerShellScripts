Get-MailboxDatabase | Get-MailboxStatistics | Where { $_.DisconnectReason -eq "Disabled" } | Format-Table DisplayName,Database,MailboxGuid > disconnectedmailbox.csv
