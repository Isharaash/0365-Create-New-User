Install-Module msonline #Install MS
Connect-MsolService #connect the MS


Get-MsolAccountSku #Account licensed details
Get-MsolAccountSku | fl #show the account details
Get-MsolUser -UserPrincipalName seanchandrasekara@melbourneitsupport.net.au |fl #show the account details
Get-MsolUser # show all accounts
Get-MsolUser | clip #aLL Users
Get-MsolUser | Where-Object{$_.isLicensed-like "false"}#All Unlicensed Account
Get-MsolUser | Where-Object{$_.isLicensed-like "true"} #All Licensed Account
Stop-Transcript
(Get-MsolUser -UserPrincipalName seanchandrasekara@melbourneitsupport.net.au).licenses[0].servicestatus #services
get-msolaccountsku #licence plane
New-MsolUser -UserPrincipalName "Sadun@Ashen772.onmicrosoft.com" -DisplayName "Sadun Perera" -FirstName Sadun -LastName Perera -UsageLocation "IN" -LicenseAssignment  "Ashen772:FLOW_FREE" -Password "Ashen2000*" #add user account



#New-MgUser -UserPrincipalName "Sadun@Ashen772.onmicrosoft.com" -DisplayName "Sadun Perera" -GivenName "Sadun" -Surname "Perera" -MailNickname "SadunPerera" -AccountEnabled $true -PasswordProfile @{Password="Ashen2000+"; ForceChangePasswordNextSignIn=$false} -UsageLocation "IN"

