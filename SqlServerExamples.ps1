<# SqlServer #>

Install-Module -Name SqlServer -AllowClobber

Get-Command -Module SqlServer

Get-Help Write-SqlTableData -Examples

# create database, schema, table if it doesn't exist
Get-ChildItem -Path C:\ETL\FORMAT_FILES | Select-Object DirectoryName, FullName, Extension, Name, Length,LastWriteTime | Write-SQlTableData -ServerInstance localhost -DatabaseName ETL -SchemaName dbo -TableName FORMAT_FILES -Force


