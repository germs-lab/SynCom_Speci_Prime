
python primer3-out-to-fasta.py PvR045.primer3.out.txt primer3-parsed/PvR045-parsed-primers.fasta

# Define an array of isolate IDs 

isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python primer3-out-to-fasta.py \
        "${isolates}.primer3.out.txt" \
        primer3-parsed/"${isolates}-parsed-primers.fasta"
done
