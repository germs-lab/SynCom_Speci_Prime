micromamba activate /work/adina/ngeerdes/env/primer3

primer3_core < primer3-input/PvR045.primer3.in.boulderio > primer3-output/PvR045.primer3.out.txt

isolates=("PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolate in "${isolates[@]}"; do
    primer3_core < "primer3-input/${isolate}.primer3.in.boulderio" > "primer3-output/${isolate}.primer3.out.txt"
done
