import sys
from Bio import SeqIO # type: ignore

def generate_primer3_input(input_fasta, output_file):
    # Primer3 parameters
    primer3_params = """PRIMER_TASK=pick_pcr_primers
PRIMER_OPT_SIZE=20
PRIMER_MIN_SIZE= 20
PRIMER_MAX_SIZE=20
PRIMER_PRODUCT_SIZE_RANGE=100-200
PRIMER_NUM_RETURN=10
="""

    # Open output file for writing
    with open(output_file, "w") as out:
        for record in SeqIO.parse(input_fasta, "fasta"):
            out.write(f"SEQUENCE_ID={record.id}\n")
            out.write(f"SEQUENCE_TEMPLATE={record.seq}\n")
            out.write(f"{primer3_params}\n")

def main():
    # Check if correct number of arguments is provided
    if len(sys.argv) != 3:
        print("Usage: python fasta-to-boulder-io.py <input_fasta> <output_file>")
        sys.exit(1)

    # Get input and output file paths from command-line arguments
    input_fasta = sys.argv[1]
    output_file = sys.argv[2]

    # Generate Primer3 input file
    generate_primer3_input(input_fasta, output_file)
    print(f"Primer3 input file generated: {output_file}")

if __name__ == "__main__":
    main()