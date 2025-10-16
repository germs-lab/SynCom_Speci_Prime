from Bio import SeqIO
import sys

def filter_fasta(input_file, sequence_ids_to_keep, output_file):
    # Read all sequences from the input FASTA
    sequences = SeqIO.to_dict(SeqIO.parse(input_file, "fasta"))
    
    # Keep sequences NOT in sequence_ids_to_keep
    filtered_seqs = [seq for seq_id, seq in sequences.items() if seq_id not in sequence_ids_to_keep]
    
    # Write filtered sequences to output FASTA
    SeqIO.write(filtered_seqs, output_file, "fasta")

# --- Main ---
fasta_input_file = sys.argv[1]
blast_filtered_file = sys.argv[2]
output_fasta_file = sys.argv[3]

# Read sequence IDs to keep from BLAST filtered file
sequence_ids_to_keep = [line.rstrip().split('\t')[0] for line in open(blast_filtered_file, 'r')]

# Run filtering
filter_fasta(fasta_input_file, sequence_ids_to_keep, output_fasta_file) # added output file as argument