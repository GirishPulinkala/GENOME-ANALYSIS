#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 4:00:00
#SBATCH -J htseq_11
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq
module load samtools

samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040092_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040093_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040095_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040097_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156066_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156067_sorted.bam
samtools index /home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156069_sorted.bam

cd /home/girishp/genome_analysis/analyses/transcriptome/htseq

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040092_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6040092_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040093_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6040093_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040095_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6040095_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6040097_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6040097_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156066_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6156066_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156067_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6156067_counts.txt

htseq-count -f bam -t exon -i "ID" -r pos --stranded=no \
/home/girishp/genome_analysis/analyses/star_out/sorted/sort/SRR6156069_sorted.bam \
/home/girishp/genome_analysis/analyses/braker/augustus.hints.gff3 > SRR6156069_counts.txt
