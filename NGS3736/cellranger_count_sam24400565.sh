#!/bin/bash
#SBATCH -q long          # submit to long queue
#SBATCH -J cellRanger            # job name
#SBATCH -p  himem #highmemory nodes

DIR_OUT='SAM24400565/'
FASTQ='../Libraries_SAM24400565.csv'
DIR_DB='/gne/data/dnaseq/analysis/aplle/genomes/refdata-cellranger-igis-4.0/GRCh38'
DIR_CR='/gne/data/dnaseq/analysis/aplle/software/10x/cellranger-6.0.2/cellranger'
OUT_NAME='SAM24400565_CellRangerCustom'

mkdir $DIR_OUT
cd $DIR_OUT

$DIR_CR count --id=$OUT_NAME --libraries=$FASTQ  --transcriptome=$DIR_DB --localcores=12 --chemistry=threeprime
