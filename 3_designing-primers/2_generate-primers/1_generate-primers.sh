micromamba activate /work/adina/ngeerdes/env/primer3

isolates=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates in "${isolates[@]}" ; do 
    primer3_core < ../../primers/primer3-in/"${isolates}.boulderio" > "../../primers/primer3-out/${isolates}.txt"
done