#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -J Fastqc_illumina
#SBATCH -t 10:00 --qos=short
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load FastQC/0.11.5

for filename in /home/girishp/genome_analysis/data/illumina_data/*.fastq.gz
 do
   fastqc $filename -o /home/girishp/genome_analysis/analyses/fastqc_illumina/ -f fastq --noextract 
 done

