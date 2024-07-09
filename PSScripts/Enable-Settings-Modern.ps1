$cred = Create-Credentials -Name 'youradmin@domain.de' -Password '***'

# Required Modules and Service Connections
## ExO
Install-Module ExchangeOnlineManagement
Connect-ExchangeOnline -Credential $cred
## IPPS
Connect-IPPSSession -Credential $cred # part of ExchangeOnlineManagement Module
## SPO
Install-Module Microsoft.Online.Sharepoint.PowerShell
Connect-SPOService -url "https://<tenant>-admin.sharepoint.com"

#region Enable Auditing in M365
Enable-OrganizationCustomization
Set-AdminAuditLogConfig -UnifiedAuditLogIngestionEnabled $true
# Check it
Get-AdminAuditLogConfig | Format-List -Property UnifiedAuditLogIngestionEnabled
#endregion

#region Enable MIPLablesinSPO (Modern)
# Link: https://learn.microsoft.com/en-us/entra/identity/users/groups-assign-sensitivity-labels
Install-PSResource Microsoft.Graph
Install-PSResource Microsoft.Graph.Beta
Connect-MgGraph -Scopes "Directory.ReadWrite.All"
$grpUnifiedSetting = Get-MgBetaDirectorySetting -Search DisplayName:"Group.Unified"
if ( $null -eq $grpUnifiedSetting ) {
    # if $grpUnifiedSetting is empty:
    Get-MgBetaDirectorySettingTemplate
    $TemplateId = (Get-MgBetaDirectorySettingTemplate | Where-Object { $_.DisplayName -eq "Group.Unified" }).Id
    # $Template = Get-MgBetaDirectorySettingTemplate | Where-Object { $_.Id -eq $TemplateID } #  -Property Id -Value $TemplateId -EQ
    $params = @{
        templateId = "$TemplateId"
        values     = @(
            @{
                name  = "UsageGuidelinesUrl"
                value = "https://guideline.example.com"
            }
            @{
                name  = "EnableMIPLabels"
                value = "True"
            }
        )
    }
    New-MgBetaDirectorySetting -BodyParameter $params
    # Just for checking:
    $Setting = Get-MgBetaDirectorySetting | Where-Object { $_.DisplayName -eq "Group.Unified" }
    $Setting.Values
    $Setting.Values | Where-Object { $_.Name -eq 'EnableMIPLabels' } | Select-Object -Property Value
    $grpUnifiedSetting = Get-MgBetaDirectorySetting -Search DisplayName:"Group.Unified"
}
else {
    $params = @{
        Values = @(
            @{
                Name  = "EnableMIPLabels"
                Value = "True"
            }
        )
    }
        
    Update-MgBetaDirectorySetting -DirectorySettingId $grpUnifiedSetting.Id -BodyParameter $params
}
    
# Connect-IPPSSession # this requires the module ExchangeOnlineManagement (Install-Module ExchangeOnlineManagement)
Execute-AzureAdLabelSync
#endregion
        
#region Enable sensitivity labes for Office files in Office for the web
Set-SPOTenant -EnableAIPIntegration $true
    
#endregion



######
#
# New cmdlets with MS Graph !!!
#
# Link: https://learn.microsoft.com/en-us/entra/identity/users/groups-assign-sensitivity-labels
#
######