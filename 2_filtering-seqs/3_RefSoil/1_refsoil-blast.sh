
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}" ; do 
    echo "Running refsoil BLAST for isolate: $isolates"
        blastn \
            -query "../../filtering/syncom/filt-out/${isolates}.ffn.long.syncom" \
            -db /work/adina/ngeerdes/databases/refsoil/all-refsoil \
            -out "../../filtering/refsoil/blast-out/${isolates}.refsoil.blast.out" \
            -outfmt 6 
done