# copying the assemblies from Adinas directory to my /work/ngeerdes directory so that I can run prokka with them

cp -r /work/adina/adina/syncom-nicole/syncom-genomes-round2/2162/no_sample_id/20250131_1222_X2_FBA09760_8ac52e4d/fastq_pass /work/adina/ngeerdes/syncom_genomes/assemblies

# barcode ids 
# barcode 1 = 045
# barcode 2 = 061
# barcode 3 = 090
# barcode 4 = 096
# barcode 5 = 101
# barcode 6 = 102
# barcode 7 = 112
# barcode 8 = 115

# testing the code 

prokka --outdir PvR045.assembly.prokka --prefix barcode01-assembly.fasta barcode01-assembly.fasta

# looks like it worked and took about 10 minutes to run. this gives me an idea of how much time to request for the job 
# changed the outdir and prefix for the actual script found in prokka.0317.sh