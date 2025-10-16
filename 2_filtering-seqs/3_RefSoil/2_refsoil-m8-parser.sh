
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../blast-m8-parser-best.py \
"../../filtering/refsoil/blast-out/${isolates}.refsoil.blast.out" \
"../../filtering/refsoil/blast-out/${isolates}.refsoil.blast.out.best" \

done