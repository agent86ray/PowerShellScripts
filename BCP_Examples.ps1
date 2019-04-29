$parameters = @{ 
    bcpPath = 'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\bcp.exe'
    formatFilesFolder = "C:\DATA_CONVERSION_XG\DEV\FORMAT_FILES"
    exportFilesFolder = "C:\DATA_CONVERSION_XG\DEV\EXPORT_FILES"
}

$bcpPath = $parameters.Item("bcpPath")
$bcpPath

$formatFilesFolder = $parameters.Item("formatFilesFolder")
$formatFilesFolder

$exportFilesFolder = $parameters.Item("exportFilesFolder")
$exportFilesFolder

$formatFile = "$formatFilesFolder\CONTACT_fmt.xml"

bcp ETL.dbo.CONTACT format nul -x -c -t"" -f $formatFile -T -S localhost

#export to fixed width flat file
bcp ETL.dbo.CONTACT out C:\DATA_CONVERSION_XG\DEV\EXPORT_FILES\CONTACT.txt -f C:\DATA_CONVERSION_XG\DEV\FORMAT_FILES\CONTACT_fmt.xml -T -S localhost

# import from fixed width flat file
bcp ETL.dbo.CONTACT in C:\DATA_CONVERSION_XG\DEV\EXPORT_FILES\CONTACT.txt -f C:\DATA_CONVERSION_XG\DEV\FORMAT_FILES\CONTACT_fmt.xml -T -S localhost