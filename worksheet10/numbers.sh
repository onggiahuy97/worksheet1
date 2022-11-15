
awk '(NR>1)' amazon.tsv | cut -d$'\t' -f9 | awk 'BEGIN{mi=1000;max=0} {
s+=$1;count+=1;if ($1<0+mi) mi=$1; if ($1>0+max) max=$1
} END {
printf "sum = %d - count = %d - min = %d - max = %d - avg = %.2f", s, count, mi, max, s/count
}'

echo $sum

