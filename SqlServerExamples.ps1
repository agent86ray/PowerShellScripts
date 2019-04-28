<# SqlServer #>

Install-Module -Name SqlServer -Force -AllowClobber

Update-Module -Name SqlServer -WhatIf

Import-Module -Name SqlServer

Get-Command -Module SqlServer -Noun *Job* | Export-Excel -Now

Get-Command -Module SqlServer | Out-GridView

Get-Help -Name SqlServer\Get-SqlInstance -Examples

Get-Help Write-SqlTableData -Examples

Get-Help Read-SqlTableData -Examples

Get-Help Invoke-Sqlcmd -Examples

# create database, schema, table if it doesn't exist
Get-ChildItem -Path C:\ETL\FORMAT_FILES | Select-Object DirectoryName, FullName, Extension, Name, Length,LastWriteTime | Write-SQlTableData -ServerInstance localhost -DatabaseName ETL -SchemaName dbo -TableName FORMAT_FILES -Force

Read-SQlTableData -ServerInstance localhost -DatabaseName ETL -SchemaName dbo -TableName FORMAT_FILES | Export-Excel -Now

DIR -recurse 'SQLSERVER:\SQLRegistration\Database Engine Server Group'

$instance = Get-SqlInstance -ServerInstance localhost
$instance.Configuration.Properties

Set-SqlErrorLog

# insert to table from CSV; -Force will create database, schema, and table
# if it doesn't exist
(Import-CSV -Path "C:\repos\PowerShellScripts\CONTACT.CSV") |
Write-SqlTableData -ServerInstance localhost -Database ETL -SchemaName dbo -TableName CONTACT -Force


