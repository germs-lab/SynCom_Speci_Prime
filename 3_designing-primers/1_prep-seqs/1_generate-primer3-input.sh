cd /work/adina/ngeerdes/syncom_genomes/assemblies/fastq_pass/ncbi-nt-filtered 

python fasta-to-boulder-io.py PvR045-assembly-prokka.fasta.ffn.filtered.filtered.seq.long primer3-input/PvR045.primer3.in.boulderio 


# Define an array of isolate IDs 

isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python fasta-to-boulder-io.py \
        "${isolates}-assembly-prokka.fasta.ffn.filtered.filtered.seq.long" \
        "primer3-input/${isolates}.primer3.in.boulderio"
done


grep -c "ID" PvR045.boulderio #833 - SHOULD MATCH THE NO OF SEQS IN THE LONG FASTA