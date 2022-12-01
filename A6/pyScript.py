userIDsFile = open('userIDs.txt', 'r')
userIDs = userIDsFile.readlines()

count = 0

for line in userIDs:
    with open('total_IN_REPLY_TO_USER_ID.txt', 'r') as f:
        if line in f.read():
            count += 1

print(count)
    
