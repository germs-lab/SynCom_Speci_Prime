from Bio import SeqIO  # type: ignore
import sys

def filter_blast_and_map_to_fasta(blast_file, fasta_file, output_fasta):
    # Step 1: Parse the BLAST output and filter for alignment length of 20 and 0 mismatches
    valid_primers = set()
    with open(blast_file, 'r') as blast:
        for line in blast:
            fields = line.strip().split('\t')
            query_id = fields[0]
            alignment_length = int(fields[3])  # Alignment length (4th column in BLAST format 6)
            mismatches = int(fields[4])  # Mismatches (5th column in BLAST format 6)

            if alignment_length == 20 and mismatches == 0:
                valid_primers.add(query_id)

    # Step 2: Identify primer pairs (left and right) that both have hits
    paired_valid_primers = set()
    for primer in valid_primers:
        if primer.endswith("_left"):
            paired_primer = primer.replace("_left", "_right")
        elif primer.endswith("_right"):
            paired_primer = primer.replace("_right", "_left")
        else:
            continue  # Skip if the primer does not follow the naming convention

        # Add both primers to the valid set only if both are present
        if primer in valid_primers and paired_primer in valid_primers:
            paired_valid_primers.add(primer)
            paired_valid_primers.add(paired_primer)

    # Step 3: Map valid primer pairs back to the FASTA file
    with open(output_fasta, 'w') as out_fasta:
        for record in SeqIO.parse(fasta_file, "fasta"):
            if record.id in paired_valid_primers:
                SeqIO.write(record, out_fasta, "fasta")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py <blast_output_file> <primers_fasta_file> <output_fasta_file>")
        sys.exit(1)

    blast_output_file = sys.argv[1]
    primers_fasta_file = sys.argv[2]
    output_fasta_file = sys.argv[3]

    filter_blast_and_map_to_fasta(blast_output_file, primers_fasta_file, output_fasta_file)

    ## USAGE 

    ## python filter_primers.py blast_output.txt primers.fasta filtered_primers.fasta

    # python isolate-primer-target-check.py PvR045-parsed-primers.fasta.renamed.syncom13.blast.out.target ../PvR045-parsed-primers.fasta.renamed ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits