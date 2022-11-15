from itertools import islice

with open("amazon.tsv") as f:
    numbers = []
    for line in islice(f, 1, None): 
        numbers.append(int(line.split("\t")[8]))
    numbers.sort()

count = len(numbers)
max_num = max(numbers)
min_num = min(numbers)
sum_of_nums = sum(numbers)
avg = sum_of_nums/float(count)

print("min %s max %s avg %s" % (min_num, max_num, avg))
