from Bio import SeqIO  # type: ignore
import sys
from collections import defaultdict

def filter_primers_by_hit_count(blast_file, fasta_file, output_fasta, max_hits=150):
    # Step 1: Parse the BLAST output and count hits for each primer
    primer_hit_counts = defaultdict(int)
    with open(blast_file, 'r') as blast:
        for line in blast:
            fields = line.strip().split('\t')
            query_id = fields[0]  # Primer ID
            primer_hit_counts[query_id] += 1

    # Step 2: Identify primers to remove based on hit counts
    primers_to_remove = set()
    for primer, count in primer_hit_counts.items():
        print(f"Primer: {primer}, Hit Count: {count}")  # Print the primer ID and its hit count
        if count >= max_hits:
            primers_to_remove.add(primer)

    # Step 3: Ensure both forward (_left) and reverse (_right) primers are removed if one is flagged
    paired_primers_to_remove = set()
    for primer in primers_to_remove:
        if primer.endswith("_left"):
            paired_primer = primer.replace("_left", "_right")
        elif primer.endswith("_right"):
            paired_primer = primer.replace("_right", "_left")
        else:
            continue  # Skip if the primer does not follow the naming convention

        # Add both primers to the removal set
        paired_primers_to_remove.add(primer)
        paired_primers_to_remove.add(paired_primer)

    # Step 4: Filter the FASTA file to exclude primers with too many hits
    with open(output_fasta, 'w') as out_fasta:
        for record in SeqIO.parse(fasta_file, "fasta"):
            if record.id not in paired_primers_to_remove:
                SeqIO.write(record, out_fasta, "fasta")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python remove-nontarget-hits-lax.py <blast_output_file> <primers_fasta_file> <output_fasta_file>")
        sys.exit(1)

    blast_output_file = sys.argv[1]
    primers_fasta_file = sys.argv[2]
    output_fasta_file = sys.argv[3]

    filter_primers_by_hit_count(blast_output_file, primers_fasta_file, output_fasta_file) 

    ## python remove-nontarget-hits-lax.py PvR045-parsed-primers.fasta.renamed.filtered.syncom13.refsoil.nt.blast.out  ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax