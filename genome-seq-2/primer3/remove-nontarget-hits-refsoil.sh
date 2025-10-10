# Define an array of isolate IDs
isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate and execute the Python script
for isolate in "${isolates[@]}"; do
    python remove-nontarget-hits.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.refsoil.blast.out" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil"
done




## python remove-nontarget-hits.py PvR045-parsed-primers.fasta.renamed.filtered.syncom13.refsoil.blast.out ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits.filtered.syncom13 ../primer3-filtered/PvR045-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil