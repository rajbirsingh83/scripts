# scripts
## Create CSV files
### Description
This script creates a csv file with the given name (default file name is `sample.csv`) for testing purposes. You need to provide count for number of rows and string value for each row. You can choose the option to append to the file instead of overwritting existing data. Its a workaround to have variety of data in your file.
### Usage
`$create_csv.sh -c 10 -r "1, John, john@yahoo.com" -f "people.csv"`  
This will create people.csv file with 10 repeated entries each of `1, John, john@yahoo.com`  
  
Command options:
*  -c             count of rows
*  -r             string for each row
*  -f [optional]  name of the file
*  -a [optional]  append to the bottom of file
*  -v [optional]  verbose
