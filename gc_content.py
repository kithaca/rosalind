#!/usr/bin/python

def gc_content(file_name):
    f = open(file_name, 'r')
    highest_gc = 0
    current_gc = 0
    current_length = 0
    current_dna = ""
    highest_dna = ""

    for line in f:
        if line[0] == ">":
            if current_length > 0:
                ratio = (float(current_gc) / current_length) * 100
                if ratio > highest_gc:
                    highest_gc = ratio
                    highest_dna = current_dna

            current_dna = line

            current_gc = 0
            current_length = 0
            current_dna = line
        else:
            for char in line.strip():
                current_length += 1
                if char == "G" or char == "C":
                    current_gc += 1

    f.close()
    if current_length > 0:
        ratio = (float(current_gc) / current_length) * 100
        if ratio > highest_gc:
            highest_gc = ratio
            highest_dna = current_dna

    print current_dna.strip()
    print highest_gc

gc_content("gc_content.txt")
