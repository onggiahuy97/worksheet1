The mean helpfulness value may be different but not significantly different between customers or products because the average value of helpfulness value could tell the each product or customer id helpfulness about their work.

How the work is done:
. mkdir: making directory
. cat amazon | head -n 10 | cut -d$'\t' -f2 -> get only customer id and choose random 3 from that
. grep 'customer id' | head -n 1 | cut -d$'\t' -f9 > CUSTOMERS/**.txt -> save as request
Do the same for PRODUCTS

. cat CUSTOMERS/*.txt PRODUCTS/*.txt | awk '{sum+=$1}END{print sum}' 
. echo "result/6" | bc 
doing the two command lines above to get helpfulness mean value
