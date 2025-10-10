# sys module to handle command-line arguments
import sys

def filter_fasta(input_file, output_file, min_length=200):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        current_header = None
        current_seq = []
        
        for line in infile:
            line = line.strip()
            if not line:
                continue
            if line.startswith(">"):
                # If there's a sequence stored, process it
                if current_header is not None:
                    seq = "".join(current_seq)
                    if len(seq) >= min_length:
                        outfile.write(current_header + "\n")
                        # Optionally, wrap the sequence lines to 60 characters per line
                        for i in range(0, len(seq), 60):
                            outfile.write(seq[i:i+60] + "\n")
                # Start a new record
                current_header = line
                current_seq = []
            else:
                current_seq.append(line)
                
        # Process the last record in the file
        if current_header is not None:
            seq = "".join(current_seq)
            if len(seq) >= min_length:
                outfile.write(current_header + "\n")
                for i in range(0, len(seq), 60):
                    outfile.write(seq[i:i+60] + "\n")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        sys.exit("Usage: python filter_fasta.py input.fasta output.fasta")
    
    input_fasta = sys.argv[1]
    output_fasta = sys.argv[2]
    filter_fasta(input_fasta, output_fasta)
