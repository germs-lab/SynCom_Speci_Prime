
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../filter-target-from-blast-out.py \
"../../filtering/syncom/blast-out/${isolates}.syncom.blast.out" \
"../../filtering/syncom/blast-out/${isolates}.syncom.blast.out.filt"\

done
