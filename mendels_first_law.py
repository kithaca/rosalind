# Given: Three positive integers k, m, and n, representing a population
# containing k + m + n organisms: k individuals are homozygous dominant
# for a factor, m are heterozygous, and n are homozygous recessive.

# Return: The probability that two randomly selected mating organisms will
# produce an individual possessing a dominant allele (and thus displaying
# the dominant phenotype). Assume that any two organisms can mate.

def probability(file_name):
	f = open(file_name, 'r')
	ints = f.readline()
	ints = ints.split(" ")
	k = float(ints[0])
	m = float(ints[1])
	n = float(ints[2])
	tot = k + m + n

	k_first = k / tot
	kk = k_first * (k-1)/(tot-1)
	km = k_first * m/(tot-1)
	kn = k_first * n/(tot-1)

	m_first = m / tot
	mk = m_first * k/(tot-1)
	mm = m_first * (m-1)/(tot-1) * 0.75
	mn = m_first * n/(tot-1) * 0.5

	n_first = n / tot
	nk = n_first * k/(tot-1)
	nm = n_first * m/(tot-1) * 0.5
	nn = n_first * (n-1)/(tot-1) * 0

	result = kk + km + kn + mk + mm + mn + nk + nm + nn

	return result

print probability('test_data/mendels_first_law.txt')