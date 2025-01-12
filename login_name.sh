if [ $# -eq 0 ]
then
echo "no arguments"
else
for name in $*
do 
if grep $name/etc/passwd>/dev/null
then
echo "login name:$name"
hdir=`grep $name/etc/passwd|cut -d":"-f6`
echo "Home directory:$hdir"
else
echo "$name is not valid login name"
fi
done
fi
