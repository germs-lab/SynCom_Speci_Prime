# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}" ; do 
    python ../fasta-to-boulder-io.py \
        ../../filtering/nt/filt-out/"${isolates}.ffn.long.syncom.refsoil.nt" \
        ../../primers/primer3-in/"${isolates}.boulderio" 
done
