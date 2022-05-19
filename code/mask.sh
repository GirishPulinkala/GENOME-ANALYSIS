#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -J mask
#SBATCH -t 24:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load RepeatModeler
module load RepeatMasker

BuildDatabase -name myspecies /home/girishp/genome_analysis/analyses/pilon_assembly/pilon_10_scaffold.fasta 
RepeatModeler -database myspecies -pa 8

RepeatMasker -lib myspecies-families.fa -xsmall -pa 8 \
-dir /home/girishp/genome_analysis/analyses/masker \
/home/girishp/genome_analysis/analyses/pilon_assembly/pilon_10_scaffold.fasta

