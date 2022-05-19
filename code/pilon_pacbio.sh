#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 6
#SBATCH -J pilon_pacbio
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load Pilon/1.22

pilon --genome /home/girishp/genome_analysis/analyses/pacbio_assembly/SRR6058604_scaffold_10.contigs.fasta --bam /home/girishp/genome_analysis/analyses/bwa_pacbio/bwa_sorted_res.bam  --output pilon_6_scaffold --outdir /home/girishp/genome_analysis/analyses/pilon_assembly --diploid --threads 4
