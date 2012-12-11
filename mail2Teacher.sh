#!/bin/sh

## Case: Assumes students working with MySQL on a Linux server. Instructor
## needs to review their MySQL sessions, which they initiate with a 'mysql -u
## $USER -p --tee=$HOME/filename.mysql-history' like command, but in some cases a
## group writable directory to save this file or sudo access hasn't been granted
## to the instructor (so he/she can visit each student's home directory).

## So this script should be downloaded and saved by each student to their home
## directory.  When the student has completed their assignment, they run this
## script 'sh mail2Teacher.sh', which emails the student's mysql history (including
## mysql output) to the instructor.

# Set variables 
# Name files with current date
# Email address is currently hard coded

dirList="listing.$USER.$(date +%F).txt"
hwFile="hw.$USER.$(date +%F).txt"
archFiles="archived.$USER.$(date +%F).tar"
myEmail="enter email address here"

# Create files

touch $dirList
touch $hwFile

# Grab list of mysql log file names in current directory

ls *history >> $dirList

# Grab contents of each file and save into the homework file

echo "=====================================" >> $hwFile
echo "FILE NAMES INCLUDED IN THIS EMAIL:" >> $hwFile
echo "=====================================" >> $hwFile
echo "" >> $hwFile

cat $dirList >> $hwFile

echo "" >> $hwFile
echo "============================================" >> $hwFile
echo "USER MYSQL HISTORY FILE OUTPUT FOLLOWS:" >> $hwFile
echo "============================================" >> $hwFile
echo "" >> $hwFile

for i in *history ;
    do cat $i >> $hwFile ;
done

echo "END OF FILE" >> $hwFile

# Mail the homework file

if [ -e $hwFile ]
then
    cat $hwFile | mail -s "mysql hw" $myEmail
else
    echo "Failed to Mail" && exit 1
fi
    
# Tarball and remove files 

tar cf $archFiles *history && rm *.txt && rm *history

exit 0
