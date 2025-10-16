# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}"; do
    python remove-short-seqs.py \
        prokka-out/"${isolates}.ffn" \
        "filtering/syncom-filt-in/${isolates}.ffn.long"
done