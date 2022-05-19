#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J Fastqc_illumina
#SBATCH -t 15:00 --qos=short
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load FastQC/0.11.5

for filename in /home/girishp/genome_analysis/data/transcriptome/trimmed/*.fastq.gz
 do
   fastqc $filename -o /home/girishp/genome_analysis/analyses/fastqc_transcriptome/trimmed -f fastq --noextract 
 done

for filename in /home/girishp/genome_analysis/data/transcriptome/untrimmed/*.fastq.gz
 do
  fastqc $filename -o /home/girishp/genome_analysis/analyses/fastqc_transcriptome/untrimmed -f fastq --noextract
done

