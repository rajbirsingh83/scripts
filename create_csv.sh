#!/bin/bash
# Argument = -c count -r row -f -a -v

usage()
{
cat << EOF
usage: $0 options

This script creates a csv file.

OPTIONS:
   -c      count of rows
   -r      string for each row
   -f      name of the file
   -a      append to the bottom of file
   -v      Verbose
EOF
}

COUNT=
ROW=
FILE=
APPEND=
VERBOSE=

while getopts ":c:r:f:av" OPTION
  do
    case $OPTION in
      c)
        COUNT=$OPTARG
        ;;
      r)
        ROW=$OPTARG
        ;;
      f)
        FILE=$OPTARG
        ;;
      a)
        APPEND=1
        ;;
      v)
        VERBOSE=1
        ;;
      :)
        echo "Option -$OPTARG requires an argument."
        ;;
    esac
  done

# unset or empty
if [[ -z $COUNT ]] || [[ -z $ROW ]] || [[ $VERBOSE -eq 1  ]]
then
  usage
else
  if [[ -z $FILE ]]
  then
    FILE="sample.csv"
  fi

  # do not clear file if append
  if [[ $APPEND -ne 1 ]]
  then
    > $FILE
  fi

  # write to file
  for ((i = 1; i <= $COUNT; i++))
  do
    # write to file
    printf "$ROW\n" >> $FILE
  done
fi
