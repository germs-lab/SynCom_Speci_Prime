module load micromamba

micromamba activate /work/adina/ngeerdes/env/filter

python rename-primers.py PvR045-parsed-primers.fasta PvR045-parsed-primers.fasta.renamed

# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147" "PvR045" "PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python rename-primers.py \
        "${isolates}-parsed-primers.fasta" \
        "${isolates}-parsed-primers.fasta.renamed"
done 