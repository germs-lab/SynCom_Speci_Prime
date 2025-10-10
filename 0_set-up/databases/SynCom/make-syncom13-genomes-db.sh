# This is where the prokka output is stores - where we need to get the second run genome output from to build the db. 
cd /work/adina/ngeerdes/syncom_genomes/assemblies/fastq_pass

# this script is used to copy the genomes from the syncom13-genomes folder to the working directory
find . -type f -name "*.fasta.fna" -exec cp {} /work/adina/ngeerdes/databases/syncom13-genomes/  \;


# gathering the genomes from the first round of sequencing 

# this is where these genoems live
cd /work/adina/adina/syncom-nicole/syncom-genomes/genomes/syncom13-nanopore/genomes/annotated

find . -type f -name "*.assembly.fasta.fna"

# output from the above command
./PvR061.assembly/PvR061.assembly.fasta.fna
./PvR122.assembly/PvR122.assembly.fasta.fna
./PvR021.assembly/PvR021.assembly.fasta.fna
./PvR079.assembly/PvR079.assembly.fasta.fna
./PvR090.assembly/PvR090.assembly.fasta.fna
./PvR083.assembly/PvR083.assembly.fasta.fna
./PvR119.assembly/PvR119.assembly.fasta.fna
./PvR147.assembly/PvR147.assembly.fasta.fna 

# will copy all of these genomes over to the db directory, but need to remove the assemblies that are already there from the second sequencing 

#PvR061.assembly.fasta.fna 
#PvR090.assembly.fasta.fna 
#PvR119.assembly.fasta.fna # this one is not apart of SynCom13 and is a random isolate that was sequenced. 

[ngeerdes@nova annotated]$ cd /work/adina/ngeerdes/databases/syncom13-genomes/
[ngeerdes@nova syncom13-genomes]$ ls
PvR021.assembly.fasta.fna         PvR096-assembly-prokka.fasta.fna
PvR045-assembly-prokka.fasta.fna  PvR101-assembly-prokka.fasta.fna
PvR061.assembly.fasta.fna         PvR102-assembly-prokka.fasta.fna
PvR061-assembly-prokka.fasta.fna  PvR112-assembly-prokka.fasta.fna
PvR079.assembly.fasta.fna         PvR115-assembly-prokka.fasta.fna
PvR083.assembly.fasta.fna         PvR119.assembly.fasta.fna
PvR090.assembly.fasta.fna         PvR122.assembly.fasta.fna
PvR090-assembly-prokka.fasta.fna  PvR147.assembly.fasta.fna

# Removed the following genomes from the syncom13-genomes directory
rm PvR061.assembly.fasta.fna # repeat
rm PvR090.assembly.fasta.fna # repeat
rm PvR119.assembly.fasta.fna # not in SynCom13

# general command to make blast db
makeblastdb -in /whereever/genomes/are -dbtype nucl -out /whereever/genomes/are/genome-db

# need to concatenate all of the genomes to a single file to make the syncom13 db
cat *.fasta > combined-genomes.fasta 

# made syncom13 db 

makeblastdb -in combined-genomes.fasta -dbtype nucl -out syncom13/syncom13-db