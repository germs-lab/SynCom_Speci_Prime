import sys

def separate_blast_output(blast_file):
    target_file = blast_file + ".target"
    nontarget_file = blast_file + ".nontarget"

    with open(blast_file, 'r') as infile, \
         open(target_file, 'w') as target_out, \
         open(nontarget_file, 'w') as nontarget_out:
        
        for line in infile:
            fields = line.strip().split('\t')
            query_id = fields[0]
            subject_id = fields[1]

            # Extract the first string before "_" in query_id and subject_id
            query_prefix = query_id.split('_')[0]
            subject_prefix = subject_id.split('_')[0]

            if query_prefix == subject_prefix:
                target_out.write(line)
            else:
                nontarget_out.write(line)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <blast_output_file>")
        sys.exit(1)

    blast_output_file = sys.argv[1]
    separate_blast_output(blast_output_file)
