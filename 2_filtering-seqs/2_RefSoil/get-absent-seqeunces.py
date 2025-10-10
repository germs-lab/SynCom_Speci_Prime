from Bio import SeqIO # type: ignore
import sys

def filter_fasta(input_file, sequence_ids_to_keep):
    # Read the input FASTA file
    sequences = SeqIO.to_dict(SeqIO.parse(input_file, "fasta"))
    
    filtered_list = []
    # Filter sequences based on the provided list of sequence IDs
    for each_seq in sequences:
        if each_seq not in sequence_ids_to_keep:
            filtered_list.append(each_seq)

    # Write the filtered sequences to the output FASTA file
    for seq_id in filtered_list:
        print(f">{seq_id}")
        print(sequences[seq_id].seq)

# Example usage
fasta_input_file = sys.argv[1]

l = []
for line in open(sys.argv[2], 'rU'):
    l.append(line.rstrip().split('\t')[0])

sequences_to_keep = l

filter_fasta(fasta_input_file, sequences_to_keep)