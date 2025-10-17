# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python ../rename-primers.py \
        ../../primers/primers-fasta/"${isolates}.primers.fasta" \
        ../../primers/primers-fasta/"${isolates}.primers.fasta.renamed"
done 