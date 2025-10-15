
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../get-absent-sequences.py \
"../../filtering/syncom/filt-in/${isolates}.ffn.long" \
"../../filtering/syncom/blast-out/${isolates}.syncom.blast.out.best" \ 
> "../../filtering/syncom/filt-out/${isolates}.ffn.long.syncom"

done