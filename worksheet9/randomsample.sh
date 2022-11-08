if [ -z "$1" ] && [-z "$2" ]; then
	exit
fi

if (($1 < 0 || $1 >= 100)); then
	echo "Number if out of range 1...99"
	exit
fi

for (( i=$(expr "1"); i<=$(expr $1); ++i)) 
do
	random=$(($RANDOM % 100 + 1))
	head -n $random $2 | tail -1
done


