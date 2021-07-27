Get-MailboxStatistics | where {$_.ObjectClass –eq “Mailbox”} | Sort-Object TotalItemSize –Descending | ft @{label=”User”;expression={$_.DisplayName}},@{label=”Total Size (GB)”;expression={$_.TotalItemSize.Value.ToGB()}},@{label=”Items”;expression={$_.ItemCount}},@{label=”Storage Limit”;expression={$_.StorageLimitStatus}} -auto


//Delete mailbox by date
search-mailbox -identity user@contoso -searchquery {received:01/01/2015..01/01/2017} -deletecontent

//to allow from normal shell use
Add-PSSnapin Microsoft.Exchange.Management.PowerShell.SnapIn;
