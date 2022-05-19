#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -J trimmomatic_untrimmed
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools

java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE \
/home/girishp/genome_analysis/data/transcriptome/untrimmed/SRR6040095_scaffold_10.1.fastq.gz \
/home/girishp/genome_analysis/data/transcriptome/untrimmed/SRR6040095_scaffold_10.2.fastq.gz \
/home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_1P.fq.gz \
/home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_1U.fq.gz \
/home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_2P.fq.gz \
/home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10_2U.fq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:50

