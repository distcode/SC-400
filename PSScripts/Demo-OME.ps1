
Connect-ExchangeOnline
Connect-IPPSSession

Get-Command -Name *OMEConfig*

# Get all OME Configurations
Get-OMEConfiguration

# New OME Configuration
New-OMEConfiguration -Identity 'SC-400 Default' `
                     -BackgroundColor '#2b8cbd' `
                     -IntroductionText 'has sent an important and therefore protected message. (SC-400)' `
                     -ReadButtonText 'Unencrypt the message ...' `
                     -EmailText 'any text to explain additional steps e.g.' `
                     -DisclaimerText 'This mail was sent as part of course SC-400.' `
                     -ExternalMailExpiryInDays 5 `
                     # -OTPEnabled $true `
                     # -SocialIdSignIn $true # recipient could use his/her socialid to read the message (Google, Yahoo, ...) if set to $false a MS Account / Entra ID Account must be used or OTPEnabled is set to $true
# Parameter Identity is mandatory and is the name of the configuration/template.



