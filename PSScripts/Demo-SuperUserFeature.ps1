
#requires -Version 5
#requires -RunAsAdministrator

# Use PowerShell 5 for this script!
# Required Module AIPService
Install-Module AIPScanner -Scope CurrentUser
# Execution Policy
Set-ExecutionPolicy -ExecutionPolicy Bypass

# Connect to the AIPService
Connect-AipService

# Check Super User Feature
Get-AipServiceSuperUserFeature
# Enable Super User Feature
Enable-AipServiceSuperUserFeature

# Add a Super User Group - only a single group is possible
# A mail enabled group is required
Set-AipServiceSuperUserGroup -GroupEmailAddress '<upn-of-group>'

# Add a Super User - multiple users are possible
Add-AipServiceSuperUser -EmailAddress '<upn-of-user>'

# Check it
Get-AipServiceSuperUserFeature
Get-AipServiceSuperUserGroup
Get-AipServiceSuperUser
