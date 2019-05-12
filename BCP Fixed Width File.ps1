<#

Assuming a table exists...

BCP [3-part table name] format nul -c -t"" -f [format file full path] -x -T -S [database server]

-- 3-part table name
DATABASE_NAME.SCHEMA.TABLE_NAME

-- format file full path
C:\ETL\FORMAT_FILES\FORMAT_FILE_NAME.xml

#>

<# create BCP format for fixed-width file (no delimiters) #>
BCP ETL.dbo.CONTACT format nul -c -t"" -f C:\ETL\FORMAT_FILES\CONTACT.xml -x -T -S localhost

<# export table to fixed-width file #>
BCP ETL.dbo.CONTACT out C:\ETL\EXPORT_FILES\CONTACT.txt -f C:\ETL\FORMAT_FILES\CONTACT.xml -T -S localhost

<# import fixed-width file #>
BCP ETL.import.CONTACT in C:\ETL\EXPORT_FILES\CONTACT.txt -f C:\ETL\FORMAT_FILES\CONTACT.xml -T -S localhost
