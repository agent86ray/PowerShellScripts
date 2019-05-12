<#

Assuming a table exists...

BCP [3-part table name] format nul -c -t"" -f [format file full path] -x -T -S [database server]

-- 3-part table name
DATABASE_NAME.SCHEMA.TABLE_NAME

-- format file full path
C:\ETL\FORMAT_FILES\FORMAT_FILE_NAME.xml

#>


BCP ETL.dbo.CONTACT format nul -c -t"" -f C:\ETL\FORMAT_FILES\CONTACT.xml -x -T -S localhost