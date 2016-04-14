# Counting Point Mutations

# Given two strings ss and tt of equal length, the Hamming distance between ss and tt, denoted dH(s,t)dH(s,t), is the number of corresponding symbols that differ in ss and tt. See Figure 2.

# Given: Two DNA strings ss and tt of equal length (not exceeding 1 kbp).

# Return: The Hamming distance dH(s,t)dH(s,t).

# Sample Dataset
# GAGCCTACTAACGGGAT
# CATCGTAATGACGGCCT

# Sample Output
# 7

def hamming(file_name):
	f = open(file_name, 'r')
	s = f.readline()
	t = f.readline()
	count = 0

	for i in range(len(s) - 1):
		if s[i] != t[i]:
			count += 1

	f.close()
	return count

print hamming("hamming_dist.txt")
