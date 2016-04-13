# Rabbits and Recurrence Relations

# A sequence is an ordered collection of objects (usually numbers), which
# are allowed to repeat. Sequences can be finite or infinite. Two examples
# are the finite sequence (π,−2√,0,π)(π,−2,0,π) and the infinite sequence
# of odd numbers (1,3,5,7,9,…)(1,3,5,7,9,…). We use the notation anan to
# represent the nn-th term of a sequence.

# A recurrence relation is a way of defining the terms of a sequence with
# respect to the values of previous terms. In the case of Fibonacci's
# rabbits from the introduction, any given month will contain the rabbits
# that were alive the previous month, plus any new offspring. A key
# observation is that the number of offspring in any month is equal to the
# number of rabbits that were alive two months prior. As a result, if FnFn
# represents the number of rabbit pairs alive after the nn-th month, then
# we obtain the Fibonacci sequence having terms FnFn that are defined by
# the recurrence relation Fn=Fn−1+Fn−2Fn=Fn−1+Fn−2 (with F1=F2=1F1=F2=1
# to initiate the sequence). Although the sequence bears Fibonacci's name,
# it was known to Indian mathematicians over two millennia ago.

# When finding the nn-th term of a sequence defined by a recurrence relation,
# we can simply use the recurrence relation to generate terms for progressively
# larger values of nn. This problem introduces us to the computational
# technique of dynamic programming, which successively builds up solutions
# by using the answers to smaller cases.

# Given: Positive integers n≤40n≤40 and k≤5k≤5.

# Return: The total number of rabbit pairs that will be present after
# nn months if we begin with 1 pair and in each generation, every pair
# of reproduction-age rabbits produces a litter of kk rabbit pairs (instead
# of only 1 pair).

# Sample Dataset
# 5 3

# Sample Output
# 19


def rabbits(n, k)
	return 1 if n == 1 || n == 2
	rabbit_pairs = rabbits(n-2, k) * k + rabbits(n-1, k)
	rabbit_pairs
end

p rabbits(32, 3)

# 5 months
# 3 rabbit pairs

# month 1 => 1 pair of babies
# month 2 => 1 pair of adults
# month 3 => 1 pair of adults, 3 pairs babies
# month 4 => 4 pairs adults, 3 pairs babies
# month 5 => 7 pairs adults, 12 pairs babies

# adults: [0, 1, 1, 4, 7]
# babies: [1, 0, 3, 3, 12]
# total: [1, 1, 4, 7, 19]
# [1, 1, 1+ (1*3), 4 + (1*3), 7 + (4*3)]
