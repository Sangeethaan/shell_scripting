stty -echo
echo "enter password"
read pass1
echo "confirm password"
read pass2
if[ "$pass1"="$pass2" ]
then
echo "terminal is locked"
trap 1 2 15
while true
do
echo "enter password"
read pass3
if[ "$pass3"="$pass2" ]
then
echo ""terminal unlocked"
stty echo
exit
else
echo "try again"
fi
done
else
echo "password not match"
sty echo
fi

