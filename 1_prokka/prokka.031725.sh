#### USED vim in command line to create this as a text file in the HPC nova cluster. ran with the following command 
## sbatch prokka.sb


#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename

#SBATCH --time=03:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=36   # 36 processor core(s) per node 
#SBATCH --job-name="prokka"
#SBATCH --mail-user=ngeerdes@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --output="slurm-prokka.out" # job standard output file (%j replaced by job id)

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE  

module load micromamba 

micromamba activate /work/adina/ngeerdes/prokka2 

cd /work/adina/ngeerdes/syncom_genomes/assemblies/fastq_pass

prokka --outdir PvR045-assembly-prokka --prefix PvR045-assembly-prokka.fasta barcode01-assembly.fasta 

prokka --outdir PvR061-assembly-prokka --prefix PvR061-assembly-prokka.fasta barcode02-assembly.fasta 

prokka --outdir PvR090-assembly-prokka --prefix PvR090-assembly-prokka.fasta barcode03-assembly.fasta 

prokka --outdir PvR096-assembly-prokka --prefix PvR096-assembly-prokka.fasta barcode04-assembly.fasta 

prokka --outdir PvR101-assembly-prokka --prefix PvR101-assembly-prokka.fasta barcode05-assembly.fasta 

prokka --outdir PvR102-assembly-prokka --prefix PvR102-assembly-prokka.fasta barcode06-assembly.fasta 

prokka --outdir PvR112-assembly-prokka --prefix PvR112-assembly-prokka.fasta barcode07-assembly.fasta 

prokka --outdir PvR115-assembly-prokka --prefix PvR115-assembly-prokka.fasta barcode08-assembly.fasta 