#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -J star_untrimmed
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load star


STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--readFilesIn /home/girishp/genome_analysis/data/transcriptome/trimmed/SRR6040097_scaffold_10.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/girishp/genome_analysis/analyses/star_out/SRR6040097_STAR_ \     
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--readFilesIn /home/girishp/genome_analysis/data/transcriptome/trimmed/SRR6156066_scaffold_10.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/girishp/genome_analysis/analyses/star_out/SRR6156066_STAR_ \     
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--readFilesIn /home/girishp/genome_analysis/data/transcriptome/trimmed/SRR6156067_scaffold_10.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/girishp/genome_analysis/analyses/star_out/SRR6156067_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--readFilesIn /home/girishp/genome_analysis/data/transcriptome/trimmed/SRR6156069_scaffold_10.* \
--readFilesCommand zcat \
--outFileNamePrefix /home/girishp/genome_analysis/analyses/star_out/SRR6156069_STAR_ \
--outSAMtype BAM Unsorted

STAR --runThreadN 8 \
--twopassMode Basic \
--genomeDir /home/girishp/genome_analysis/analyses/star/genome \
--readFilesIn /home/girishp/genome_analysis/analyses/trimmomatic_out/scaffold_10* \
--readFilesCommand zcat \
--outFileNamePrefix /home/girishp/genome_analysis/analyses/star_out/scaffold_untrimmed_STAR_ \
--outSAMtype BAM Unsorted











