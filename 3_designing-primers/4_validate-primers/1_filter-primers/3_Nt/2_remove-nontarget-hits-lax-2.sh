# Define an array of isolate IDs
isolates=("PvR045" "PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate and execute the Python script
for isolate in "${isolates[@]}"; do
    python remove-nontarget-hits-lax-2.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.refsoil.nt.blast.out" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax.2"
done

