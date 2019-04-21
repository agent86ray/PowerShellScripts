<#

PowerShell.exe Command-Line Help
https://docs.microsoft.com/en-us/powershell/scripting/components/console/powershell.exe-command-line-help?view=powershell-6

Comparison Operataors
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comparison_operators?view=powershell-6

Get-ChildItem
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-6

Get-Content
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content?view=powershell-6

New-Item
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item?view=powershell-6

Get-Member
https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-member?view=powershell-6

#>

Get-ChildItem -Path C:\ETL\FORMAT_FILES | Get-Member | Export-Excel -Now

Get-ChildItem -Path C:\ETL\FORMAT_FILES | Select-Object DirectoryName, FullName, Extension, Name, Length,LastWriteTime


