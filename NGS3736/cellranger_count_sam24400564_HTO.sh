#!/bin/bash
#SBATCH -q long          # submit to long queue
#SBATCH -J cellRanger            # job name
#SBATCH -p  himem #highmemory nodes

DIR_OUT='SAM24400564/'
FASTQ='../Libraries_SAM24400564.csv'
AB='../NGS3736_feature_barcode_reference.csv'
DIR_DB='/gne/data/dnaseq/analysis/aplle/genomes/refdata-cellranger-igis-4.0/GRCh38'
DIR_CR='/gne/data/dnaseq/analysis/aplle/software/10x/cellranger-6.0.2/cellranger'
OUT_NAME='SAM24400564_CellRanger_TotalSeq'

mkdir $DIR_OUT
cd $DIR_OUT

$DIR_CR count --id=$OUT_NAME --libraries=$FASTQ --feature-ref=$AB --transcriptome=$DIR_DB --localcores=12 --chemistry=threeprime
