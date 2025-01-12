if [ $# -eq 0 ]
then
echo "No arguments"
exit
elif [ $# -lt 2 ]
then 
echo "Only one argument"
exit
else
f1=`ls -l $1|cut -c '2-10'`
f2=`ls -l $2|cut -c '2-10'`
if [ "$f1" = "$f2" ]
then
echo "file permissions are identical"
echo "the permissions are: $f1"
else
echo "file permissions are not identical"
echo "the permission of first file is f1 : $f1"
echo "the permission of the second file is f2 : $f2"
fi
fi

