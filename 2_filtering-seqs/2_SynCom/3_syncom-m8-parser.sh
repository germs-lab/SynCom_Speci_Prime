
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../blast-m8-parser-best.sh \
"../../filtering/syncom/blast-out/${isolates}.syncom.blast.out.filt" \
"../../filtering/syncom/blast-out/${isolates}.syncom.blast.out.best" \

done