# Complementing a Strand of DNA

# In DNA strings, symbols 'A' and 'T' are complements of each other, as
# are 'C' and 'G'.

# The reverse complement of a DNA string ss is the string scsc formed by
# reversing the symbols of ss, then taking the complement of each symbol
# (e.g., the reverse complement of "GTCA" is "TGAC").

# Given: A DNA string ss of length at most 1000 bp.

# Return: The reverse complement scsc of ss.

# Sample Dataset
# AAAACCCGGT

# Sample Output
# ACCGGGTTTT

def complement(string)
	reversed = string.reverse.split("")
	reversed.each_with_index do |letter, idx|
		case letter
		when 'A'
			compl = 'T'
		when 'T'
			compl = 'A'
		when 'C'
			compl = 'G'
		when 'G'
			compl = 'C'
		end
		reversed[idx] = compl
	end

	reversed.join("")
end

nucleotides = File.new("text.txt").read.chomp
p complement(nucleotides)