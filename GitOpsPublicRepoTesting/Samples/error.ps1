# This will cause a PSAvoidUsingConvertToSecureStringWithPlainText error because 
# the AsPlainText parameter with the ConvertTo-SecureString command can expose secure information.
# More information can be found at: https://learn.microsoft.com/en-us/powershell/utility-modules/psscriptanalyzer/rules/avoidusingconverttosecurestringwithplaintext?view=ps-modules
$UserInput = Read-Host 'Please enter your secure code'
$EncryptedInput = ConvertTo-SecureString -String $UserInput -AsPlainText -Force
