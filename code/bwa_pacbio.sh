#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 2  
#SBATCH -J bwa_pacbio
#SBATCH -t 12:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load bwa

bwa index /home/girishp/genome_analysis/analyses/pacbio_assembly/SRR6058604_scaffold_10.contigs.fasta 
bwa mem /home/girishp/genome_analysis/analyses/pacbio_assembly/SRR6058604_scaffold_10.contigs.fasta /home/girishp/genome_analysis/data/illumina_data/SRR6058604_scaffold_10.1P.fastq.gz /home/girishp/genome_analysis/data/illumina_data/SRR6058604_scaffold_10.2P.fastq.gz > /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_res.sam

