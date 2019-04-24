Install-Module -Name ImportExcel 

Import-Module -Name ImportExcel

Get-Service | Export-Excel -Now

Get-Service | Export-Excel C:\TEMP\Services.xlsx -AutoSize -AutoFilter




