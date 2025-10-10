
# this script uses the get-absent-sequences.py function to compare which sequence ids are found in both the nucletide file of the prokka annotation and the *.best file that contains all of the "positive hits" against the ref-soil db. 
    # it then gathers all of the sequences that are NOT found in the *.best file but are found in the .ffn file and puts them into a new *.filtered file 

# first file contains all sequences 
# second file contains the sequences we want to exclude (the best hits from the previous function) 
# the third is the output 

cd /work/adina/ngeerdes/syncom_genomes/assemblies/fastq_pass 

module load micromamba 

micromamba activate /work/adina/ngeerdes/env/filter

python get-absent-sequences.py PvR045-assembly-prokka/PvR045-assembly-prokka.fasta.ffn ref-soil-best/PvR045-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR045-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR061-assembly-prokka/PvR061-assembly-prokka.fasta.ffn ref-soil-best/PvR061-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR061-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR090-assembly-prokka/PvR090-assembly-prokka.fasta.ffn ref-soil-best/PvR090-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR090-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR096-assembly-prokka/PvR096-assembly-prokka.fasta.ffn ref-soil-best/PvR096-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR096-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR101-assembly-prokka/PvR101-assembly-prokka.fasta.ffn ref-soil-best/PvR101-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR101-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR102-assembly-prokka/PvR102-assembly-prokka.fasta.ffn ref-soil-best/PvR102-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR102-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR112-assembly-prokka/PvR112-assembly-prokka.fasta.ffn ref-soil-best/PvR112-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR112-assembly-prokka.fasta.ffn.filtered.seq

python get-absent-sequences.py PvR115-assembly-prokka/PvR115-assembly-prokka.fasta.ffn ref-soil-best/PvR115-assembly-prokka.fasta.ffn.x.refsoil.best > ref-soil-filtered/PvR115-assembly-prokka.fasta.ffn.filtered.seq

# how many seqs passed through for each isolate? 

grep -c "^>" PvR045-assembly-prokka.fasta.ffn.filtered.seq #2900 
grep -c "^>" PvR061-assembly-prokka.fasta.ffn.filtered.seq #449
grep -c "^>" PvR090-assembly-prokka.fasta.ffn.filtered.seq #2597
grep -c "^>" PvR096-assembly-prokka.fasta.ffn.filtered.seq #2964
grep -c "^>" PvR101-assembly-prokka.fasta.ffn.filtered.seq #1922
grep -c "^>" PvR102-assembly-prokka.fasta.ffn.filtered.seq #1826
grep -c "^>" PvR112-assembly-prokka.fasta.ffn.filtered.seq #5522
grep -c "^>" PvR115-assembly-prokka.fasta.ffn.filtered.seq #2246
