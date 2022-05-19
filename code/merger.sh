#!/bin/bash -l
#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -J merger
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# SRR6040092  SRR6040093 SRR6040094  SRR6040095 SRR6040096  SRR6040097  SRR6156066  SRR6156067  SRR6156069

# sorting
samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6040092_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040092_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6040093_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040093_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6040094_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040094_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/scaffold_untrimmed_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040095_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6040096_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040096_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6040097_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6040097_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6156066_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6156066_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6156067_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6156067_sorted.bam

samtools sort /home/girishp/genome_analysis/analyses/star_out/SRR6156069_STAR_Aligned.out.bam \
-o /home/girishp/genome_analysis/analyses/star_out/sorted/SRR6156069_sorted.bam


# merge
samtools merge -o /home/girishp/genome_analysis/analyses/star_out/merged.bam /home/girishp/genome_analysis/analyses/star_out/sorted/*
