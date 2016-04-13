# Counting DNA Nucleotides

# A string is simply an ordered collection of symbols selected from some
# alphabet and formed into a word; the length of a string is the number
# of symbols that it contains.

# An example of a length 21 DNA string (whose alphabet contains the symbols
# 'A', 'C', 'G', and 'T') is "ATGCTTCAGAAAGGTCTTACG."

# Given: A DNA string ss of length at most 1000 nt.
# Return: Four integers (separated by spaces) counting the respective
# number of times that the symbols 'A', 'C', 'G', and 'T' occur in ss.

# Sample Dataset
# AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC

# Sample Output
# 20 12 17 21

def count_nucleotides(string)
	dna = { 'A' => 0, 'C'=> 0, 'G' => 0, 'T' => 0 }
	string.split("").each do |letter|
		dna[letter] +=1 if dna.keys.include?(letter)
	end

	dna.each { |k, v| puts "#{k}: #{v}" }
end

nucleotides = File.new("text.txt").read.chomp
count_nucleotides(nucleotides)