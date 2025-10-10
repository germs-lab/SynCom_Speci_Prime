# for primer design I need seqs that are longer than 200 bp minimum to design primers off of 

python rm-short-seqs.py PvR045-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR045-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR061-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR061-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR090-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR090-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR096-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR096-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR101-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR101-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR102-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR102-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR112-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR112-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

python rm-short-seqs.py PvR115-assembly-prokka.fasta.ffn.filtered.filtered.seq PvR115-assembly-prokka.fasta.ffn.filtered.filtered.seq.long

# post-condition check to find the shortest seq in the *long files. Should be > 200 

awk 'BEGIN { min = -1; seq = "" } 
/^>/ {                                                
    if (length(seq) > 0) { 
        if (min == -1 || length(seq) < min) 
            min = length(seq) 
    } 
    seq = ""; 
    next 
} 
{ seq = seq $0 } 
END { 
    if (length(seq) > 0 && (min == -1 || length(seq) < min)) 
        min = length(seq); 
    print min 
}' *long
