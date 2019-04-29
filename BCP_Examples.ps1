$parameters = @{ 
    bcpPath = 'C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\bcp.exe'
    outputFolder = "C:\OUTBOUND"
}

$bcpPath = $parameters.Item("bcpPath")
$bcpPath

$outputFolder = $parameters.Item("outputFolder")
$outputFolder

bcp

bcp ETL.dbo.CONTACT format nul -x -c -t"" -f C:\DATA_CONVERSION_XG\DEV\FORMAT_FILES\CONTACT_fmt.xml -T -S localhost

bcp ETL.dbo.CONTACT out C:\DATA_CONVERSION_XG\DEV\EXPORT_FILES\CONTACT.txt -f C:\DATA_CONVERSION_XG\DEV\FORMAT_FILES\CONTACT_fmt.xml -T -S localhost