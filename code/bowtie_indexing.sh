#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -J trimmomatic_untrimmed
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools 
module load bowtie2

bowtie2-build /home/girishp/genome_analysis/analyses/pilon_assembly/pilon_10_scaffold.fasta /home/girishp/genome_analysis/analyses/bowtie_pilon
