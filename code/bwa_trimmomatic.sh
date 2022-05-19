#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2  
#SBATCH -J bwa_trimmomatic
#SBATCH -t 12:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load bwa

bwa index /home/girishp/genome_analysis/analyses/pilon_assembly/pilon_10_scaffold.fasta
bwa mem /home/girishp/genome_analysis/analyses/pilon_assembly/pilon_10_scaffold.fasta /home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_1P.fq.gz /home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_2P.fq.gz  > /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_res.sam

