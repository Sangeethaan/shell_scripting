if [ $# -eq 0 ]
then 
echo "Argument not found"
exit
else
i=`echo $*|wc -w`
while [ $i -gt 0 ]
do
s=`echo $*\cut -d "" -f $i`
temp=`echo $temp $s`
i=`expr $i - 1`
done
echo "total number of arguments: $#"
echo "Arguments list:$*"
echo "Reversed list:$temp"
fi

