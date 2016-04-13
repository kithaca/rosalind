# Transcribing DNA into RNA

# An RNA string is a string formed from the alphabet containing 'A', 'C',
# 'G', and 'U'.

# Given a DNA string tt corresponding to a coding strand, its transcribed
# RNA string uu is formed by replacing all occurrences of 'T' in tt with
# 'U' in uu.

# Given: A DNA string tt having length at most 1000 nt.
# Return: The transcribed RNA string of tt.

# Sample Dataset
# GATGGAACTTGACTACGTAAATT

# Sample Output
# GAUGGAACUUGACUACGUAAAUU

def dna_to_rna(string)
	rna = ""
	string.split("").each_with_index do |letter, idx|
		string[idx] = "U" if letter == "T"
	end

	string
end

nucleotides = File.new("text.txt").read.chomp
p dna_to_rna(nucleotides)