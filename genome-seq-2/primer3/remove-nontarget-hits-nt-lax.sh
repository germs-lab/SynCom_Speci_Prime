# Define an array of isolate IDs
isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115")

# Loop through each isolate and execute the Python script
for isolate in "${isolates[@]}"; do
    python remove-nontarget-hits-lax.py \
        "${isolate}-parsed-primers.fasta.renamed.syncom13.refsoil.nt.blast.out" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil" \
        "../primer3-filtered/${isolate}-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax"
done



### The output from running the script with hits set to 150:
#PvR045-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax16
#PvR061-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax0
#PvR090-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax22
#PvR096-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax54
#PvR101-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax34
#PvR102-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax16
#PvR112-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax34
#PvR115-parsed-primers.fasta.renamed.targethits.filtered.syncom13.refsoil.nt.lax8
