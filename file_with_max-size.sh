echo "enter directory name"
read dir
if [ ! -d $dir ]
then
echo "invalid directory"
exit
fi
large=0
for file in `find $dir -type f`
do
size=`stat -c %s $file`
echo "size of $file is $size"
if [ $size -gt $large ]
then
large=$size
fi
done
echo "file with maximum size is $large"
