<# SqlServer #>

Install-Module -Name SqlServer -Force -AllowClobber

Update-Module -Name SqlServer -WhatIf

Get-Command -Module SqlServer -Noun *JoB* | Export-Excel -Now

Get-Command -Module SqlServer | Out-GridView

Get-Help Write-SqlTableData -Examples

Get-Help Read-SqlTableData -Examples

# create database, schema, table if it doesn't exist
Get-ChildItem -Path C:\ETL\FORMAT_FILES | Select-Object DirectoryName, FullName, Extension, Name, Length,LastWriteTime | Write-SQlTableData -ServerInstance localhost -DatabaseName ETL -SchemaName dbo -TableName FORMAT_FILES -Force

Read-SQlTableData -ServerInstance localhost -DatabaseName ETL -SchemaName dbo -TableName FORMAT_FILES | Export-Excel -Now

DIR -recurse 'SQLSERVER:\SQLRegistration\Database Engine Server Group'

$instance = Get-SqlInstance -ServerInstance localhost
$instance.Configuration.Properties

Set-SqlErrorLog

