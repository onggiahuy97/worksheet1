arr=()
while read p; do
	arr+=("$p")
done < replies.txt

echo "${arr[@]}"
