
# this script uses the get-absent-sequences.py function to compare which sequence ids are found in both the nucletide file of the prokka annotation and the *.best file that contains all of the "positive hits" against the ref-soil db. 
    # it then gathers all of the sequences that are NOT found in the *.best file but are found in the .ffn file and puts them into a new *.filtered file 

# first file contains all sequences that passed the first ref-soil filtering and were blasted against the nt db
# second file contains the sequences we want to exclude (the best hits from the ncbi nt blast search) 
# the third is the output, which contains only the sequences that were not filtered out as hits against ref-soil or nt

cd /work/adina/ngeerdes/syncom_genomes/assemblies/fastq_pass 

module load micromamba 

micromamba activate /work/adina/ngeerdes/env/filter

python get-absent-sequences.py ref-soil-filtered/PvR045-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR045-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR045-assembly-prokka.fasta.ffn.filtered.filtered.seq

python get-absent-sequences.py ref-soil-filtered/PvR061-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR061-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR061-assembly-prokka.fasta.ffn.filtered.filtered.seq 

python get-absent-sequences.py ref-soil-filtered/PvR090-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR090-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR090-assembly-prokka.fasta.ffn.filtered.filtered.seq 

python get-absent-sequences.py ref-soil-filtered/PvR096-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR096-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR096-assembly-prokka.fasta.ffn.filtered.filtered.seq

python get-absent-sequences.py ref-soil-filtered/PvR101-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR101-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR101-assembly-prokka.fasta.ffn.filtered.filtered.seq 

python get-absent-sequences.py ref-soil-filtered/PvR102-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR102-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR102-assembly-prokka.fasta.ffn.filtered.filtered.seq 

python get-absent-sequences.py ref-soil-filtered/PvR112-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR112-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR112-assembly-prokka.fasta.ffn.filtered.filtered.seq 

python get-absent-sequences.py ref-soil-filtered/PvR115-assembly-prokka.fasta.ffn.filtered.seq ncbi-nt-best/PvR115-assembly-prokka.fasta.ffn.filtered.seq.ntout.best > ncbi-nt-filtered/PvR115-assembly-prokka.fasta.ffn.filtered.filtered.seq

# compare how many seqs passed through for each isolate to the input file 

grep -c "^>" PvR045-assembly-prokka.fasta.ffn.filtered.filtered.seq #926
grep -c "^>" PvR061-assembly-prokka.fasta.ffn.filtered.filtered.seq #4
grep -c "^>" PvR090-assembly-prokka.fasta.ffn.filtered.filtered.seq #1015
grep -c "^>" PvR096-assembly-prokka.fasta.ffn.filtered.filtered.seq #581
grep -c "^>" PvR101-assembly-prokka.fasta.ffn.filtered.filtered.seq #758
grep -c "^>" PvR102-assembly-prokka.fasta.ffn.filtered.filtered.seq #868
grep -c "^>" PvR112-assembly-prokka.fasta.ffn.filtered.filtered.seq #279
grep -c "^>" PvR115-assembly-prokka.fasta.ffn.filtered.filtered.seq #806