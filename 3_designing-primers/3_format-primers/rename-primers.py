from Bio import SeqIO  # type: ignore
import os
import sys

def modify_fasta_headers(input_file, output_file): # input file is the output from parse-primer3-out i.e.  PvR045-parsed-primers.fasta, output is just .renamed
    # Extract the base name of the file (without the directory and extension)
    file_name = os.path.basename(input_file).split(".")[0]
    
    # Open the output file for writing
    with open(output_file, "w") as out_fasta:
        # Parse the input FASTA file
        for record in SeqIO.parse(input_file, "fasta"):
            # Modify the header by appending or prepending the file name
            record.id = f"{file_name}_{record.id}"  # Prepend the file name
            record.description = ""  # Clear the description to avoid duplication
            # Write the modified record to the output file
            SeqIO.write(record, out_fasta, "fasta")

# Example usage
if len(sys.argv) != 3:
    print("Usage: python modify_fasta_headers.py <input_fasta> <output_fasta>")
    sys.exit(1)

input_fasta = sys.argv[1]
output_fasta = sys.argv[2]

modify_fasta_headers(input_fasta, output_fasta)