# this script uses the blast-m8-parser-best function to identify the genes in the syncom13 genomes that have matching sequences in the ref-soil db  
# it stores these "positive hit" genes in a new file *.best 

module load micromamba 

micromamba activate 

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR045-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR045-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR061-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR061-assembly-prokka.fasta.ffn.filtered.seq.ntout.best 

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR090-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR090-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR096-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR096-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR101-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR101-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR102-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR102-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR112-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR112-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

python blast-m8-parser-best.py ncbi-nt-blast-out/PvR115-assembly-prokka.fasta.ffn.filtered.seq.ntout > ncbi-nt-best/PvR115-assembly-prokka.fasta.ffn.filtered.seq.ntout.best

# post-condition check that the blast parser worked ensure that only e-values below the threshold were passed in the *.best file 

awk 'BEGIN { max=0 } { if ($11+0 > max) max=$11+0 } END { print max }' *