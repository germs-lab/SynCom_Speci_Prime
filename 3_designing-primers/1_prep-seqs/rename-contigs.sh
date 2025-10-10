module load micromamba

micromamba activate /work/adina/ngeerdes/env/filter

python rename-contigs.py PvR021.assembly.fasta.fna PvR021.assembly.fasta.fna.renamed

# Define an array of isolate IDs 

isolates_round_1=("PvR021" "PvR079" "PvR083" "PvR122" "PvR147") 

# Loop through each isolate and execute the Python script 
for isolates_round_1 in "${isolates_round_1[@]}"; do
    python rename-contigs.py \
        "${isolates_round_1}.assembly.fasta.fna" \
        "${isolates_round_1}.assembly.fasta.fna.renamed"
done 

# before running the below script, vim rename-contigs.py and change the line:
file_name = os.path.basename(input_file).split(".")[0] # split by "-" instead of "."


# these isolates have different file naming conventions, so we need to run the script separately for them
isolates_round_2=("PvR045" "PvR061" "PvR090" "PvR096" "PvR101" "PvR102" "PvR112" "PvR115") 

# Loop through each isolate and execute the Python script 
for isolates_round_2 in "${isolates_round_2[@]}"; do
    python rename-contigs.py \
        "${isolates_round_2}-assembly-prokka.fasta.fna" \
        "${isolates_round_2}-assembly-prokka.fasta.fna.renamed"
done 