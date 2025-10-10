import sys
from collections import defaultdict
from Bio import SeqIO  # Requires Biopython

def calculate_hits(blast_file, fasta_file, output_file):
    # Step 1: Load primers from the FASTA file
    valid_primers = set(record.id for record in SeqIO.parse(fasta_file, "fasta"))

    # Step 2: Parse the BLAST output file and count hits only for valid primers
    primer_hit_counts = defaultdict(int)
    with open(blast_file, 'r') as blast:
        for line in blast:
            fields = line.strip().split('\t')
            query_id = fields[0]  # Primer ID (query)
            if query_id in valid_primers:  # Count hits only for primers in the FASTA file
                primer_hit_counts[query_id] += 1

    # Step 3: Write the hit counts to the output file
    with open(output_file, 'w') as out:
        for primer, count in primer_hit_counts.items():
            out.write(f"{primer}\t{count}\n")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python calculate-primer-hits.py <blast_output_file> <fasta_file> <output_file>")
        sys.exit(1)

    blast_file = sys.argv[1]
    fasta_file = sys.argv[2]
    output_file = sys.argv[3]

    calculate_hits(blast_file, fasta_file, output_file)