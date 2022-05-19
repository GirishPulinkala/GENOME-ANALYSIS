#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -J sam_to_bam
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load samtools


samtools view -Sb /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_res.sam > /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_res.bam
samtools sort /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_res.bam -o /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_sorted_res.bam
samtools index /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_sorted_res.bam
