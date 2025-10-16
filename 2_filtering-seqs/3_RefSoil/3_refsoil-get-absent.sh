
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../get-absent-sequences.py \
"../../filtering/syncom/filt-out/${isolates}.ffn.long.syncom" \
"../../filtering/refsoil/blast-out/${isolates}.refsoil.blast.out.best" \
"../../filtering/refsoil/filt-out/${isolates}.ffn.long.syncom.refsoil"

done