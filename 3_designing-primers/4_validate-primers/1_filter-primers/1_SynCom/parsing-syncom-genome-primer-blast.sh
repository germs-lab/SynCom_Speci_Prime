# Define the isolates array
isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate 
for isolate in "${isolates[@]}"; do
    python parsing-syncom13-primer-blast.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.blast.out" 
done

