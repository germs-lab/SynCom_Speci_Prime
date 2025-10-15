
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}" ; do 
    echo "Running BLAST for isolate: $isolates"
        blastn \
            -query "../../filtering/syncom/filt-in/${isolates}.ffn.long" \
            -db /work/adina/ngeerdes/databases/syncom13-genomes/syncom13/syncom13-db \
            -out "../../filtering/syncom/blast-out/${isolates}.syncom.blast.out" \
            -outfmt 6 
done


