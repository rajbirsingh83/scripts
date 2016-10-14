# scripts
## Create CSV files
### Description
This script creates a csv file with the given name (default file name is `sample.csv`) for testing purposes. You need to provide count for number of rows and string value for each row.
### Usage
`$create_csv.sh -c 10 -r "1, John, john@yahoo.com" -f "people.csv"`
This will create people.csv file with 10 repeated entries each of `1, John, john@yahoo.com`
Command options:
   -c      count of rows
   -r      string for each row
   -f      name of the file
   -v      Verbose
