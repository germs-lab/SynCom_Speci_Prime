
# Define an array of isolate IDs 

isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolate in "${isolates[@]}"; do
    python isolate-primer-target-check.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.blast.out.target" \
        "../${isolate}-parsed-primers.fasta.renamed" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits"
done

python isolate-primer-target-check.py PvR045-parsed-primers.fasta.renamed.syncom13.blast.out.target ../PvR045-parsed-primers.fasta.renamed ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits