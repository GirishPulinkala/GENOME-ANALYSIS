#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J canu_pacbio
#SBATCH -t 24:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load canu/1.7

canu -p SRR6058604_scaffold_10.fq.gz -d /home/girishp/genome_analysis/analyses/pacbio_assembly/ genomeSize=28M -useGrid=false -pacbio-raw /home/girishp/genome_analysis/data/pacbio_data/SRR6037732_scaffold_10.fq.gz 

