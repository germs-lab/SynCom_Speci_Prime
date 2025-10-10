# Define an array of isolate IDs
isolates=("PvR045" "PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate and calculate hits
for isolate in "${isolates[@]}"; do
    python calculate-primer-hits.py \
        "../primer-blast-out/${isolate}-parsed-primers.fasta.renamed.syncom13.refsoil.nt.blast.out" \
        "${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax" \
        "${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax.hits"
done