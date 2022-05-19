#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 4  
#SBATCH -J quast_analysis
#SBATCH -t 12:00:00 
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load quast

quast.py -o /home/girishp/genome_analysis/analyses/quastresults/canu_quast /home/girish/genome_analysis/analyses/pacbio_assembly/SRR6058604_scaffold_10.contigs.fasta 




