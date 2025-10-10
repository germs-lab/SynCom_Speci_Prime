# Define an array of isolate IDs 

isolates=("PvR045" "PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python rm-short-seqs.py \
        "${isolates}-assembly-prokka.fasta.ffn.filtered.filtered.seq" \
        "${isolates}-assembly-prokka.fasta.ffn.filtered.filtered.seq.long"
done