#!/usr/bin/env python3
import sys
import os

input_file = sys.argv[1] # file name provided as command line argument after calling script 
output_file = sys.argv[2] 
isolate_name = os.path.basename(input_file).split(".")[0]  # e.g. "PvR021"

# --- Filter lines ---
with open(input_file, "r") as infile, open(output_file, "w") as outfile:
    for line in infile:
        # Skip comments or empty lines
        if not line.strip() or line.startswith("#"):
            continue

        # BLAST format 6: query_id subject_id ...
        parts = line.split("\t")
        query_id = parts[0]
        subject_id = parts[1]

        # Keep only if isolate name NOT found in either field
        if isolate_name not in subject_id:
            outfile.write(line)

print(f"Filtered results written to: {output_file}")