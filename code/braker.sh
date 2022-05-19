#!/bin/bash -l
#SBATCH -A uppmax2022-2-5 -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -J braker
#SBATCH -t 12:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user girish.pulinkala.4226@student.uu.se

module load bioinfo-tools
module load braker/2.1.1_Perl5.24.1
module load augustus/3.2.3_Perl5.24.1
module bamtools/2.5.1
module load blast/2.9.0+
module load GenomeThreader/1.7.0
module samtools/1.8
module load GenMark/4.33-es_Perl5.24.1
chmod a+w -R /home/girishp/augustus_config/species/



braker.pl \
--AUGUSTUS_CONFIG_PATH=/home/girishp/augustus_config \
--AUGUSTUS_BIN_PATH=/sw/bioinfo/augustus/3.4.0/snowy/bin \
--AUGUSTUS_SCRIPTS_PATH=/sw/bioinfo/augustus/3.4.0/snowy/scripts \
--GENEMARK_PATH=/sw/bioinfo/GeneMark/4.33-es/snowy \
--species=Durio_zibethinus \
--genome=/home/girishp/genome_analysis/analyses/masker/.fasta.masked \
--bam=/home/girishp/genome_analysis/analyses/star/merged.bam \
--cores=8 \
--workingdir=/home/girishp/genome_analysis/analyses/braker \
--gff3 \
--softmasking
