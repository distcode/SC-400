
Install-Module -Name ExchangeOnlineManagement
Connect-ExchangeOnline

Enable-OrganizationCustomization
Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true

# Audit (Premium)
# Enable Mailbox and Sharepoint Audit per User after assigned a licence to him/her.
# docu: https://learn.microsoft.com/en-us/purview/audit-solutions-overview
Set-Mailbox <user> -AuditOwner @{Add="SearchQueryInitiated"}

# Search Auditlog
# docu: https://learn.microsoft.com/en-us/powershell/module/exchange/search-unifiedauditlog?view=exchange-ps
#
# 100 entries at max.
Search-UnifiedAuditLog -StartDate ((Get-Date).AddDays(-7)) -EndDate (Get-Date)

# The next pipeline gets all log entries from the last 7 days.
# 50000 entries at max.
Search-UnifiedAuditLog -StartDate ((Get-Date).AddDays(-7)) -EndDate (Get-Date) -SessionCommand ReturnLargeSet
