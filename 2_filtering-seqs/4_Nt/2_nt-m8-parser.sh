
# Define an array of isolate IDs 

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 


for isolates in "${isolates[@]}" ; do
python ../blast-m8-parser-best.py \
"../../filtering/nt/blast-out/${isolates}.nt.blast.out" \
"../../filtering/nt/blast-out/${isolates}.nt.blast.out.best" \

done