import sys

# Set e-value threshold
threshold = 1e-5

# Input and output files from command-line arguments
input_file = sys.argv[1]
output_file = sys.argv[2]

# Dictionary to track first hit per query (optional)
seen_queries = {}

with open(input_file) as infile, open(output_file, 'w') as outfile:
    for line in infile:
        data = line.rstrip().split('\t')
        query = data[0]
        hit = data[1]
        evalue = float(data[-2])  # second-to-last column

        # Filter by e-value
        if evalue <= threshold:
            # Optional: only write the first hit per query
            if query not in seen_queries:
                outfile.write(line)
                seen_queries[query] = hit