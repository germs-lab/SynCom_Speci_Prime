# Define an array of isolate IDs
isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate and execute the Python script
for isolate in "${isolates[@]}"; do
    python remove-nontarget-hits.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.blast.out.nontarget" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13"
done



python remove-nontarget-hits.py PvR061-parsed-primers.fasta.renamed.syncom13.blast.out.nontarget ../primer3-filtered/PvR061-parsed-primers.fasta.renamed.targethits ../primer3-filtered/PvR061-parsed-primers.fasta.renamed.targethits.filtered.syncom13 