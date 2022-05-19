#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 1:00:00
#SBATCH -J STAR_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

# Load modules
module load bioinfo-tools
module load star

# Genome Indexing
STAR --runThreadN 8 \
--runMode genomeGenerate \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--genomeFastaFiles /home/girishp/genome_analysis/analyses/masker/pilon_10_scaffold.fasta.masked
