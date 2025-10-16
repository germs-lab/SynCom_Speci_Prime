
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../get-absent-sequences.py \
"../../filtering/refsoil/filt-out/${isolates}.ffn.long.syncom.refsoil" \
"../../filtering/nt/blast-out/${isolates}.nt.blast.out.best" \
"../../filtering/nt/filt-out/${isolates}.ffn.long.syncom.refsoil.nt"

done