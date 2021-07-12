#!/bin/bash
#SBATCH -q long          # submit to long queue
#SBATCH -J cellRanger            # job name
#SBATCH -p  himem #highmemory nodes

DIR_OUT='SAM24405162/'
FASTQ='../Libraries_SAM24405162.csv'
DIR_DB='/gstore/project/moussion_lab/GRCm38.transgenes'
DIR_CR='/gne/data/dnaseq/analysis/aplle/software/10x/cellranger-6.0.2/cellranger'
OUT_NAME='SAM24405162_CellRangerCustom'

mkdir $DIR_OUT
cd $DIR_OUT

$DIR_CR count --id=$OUT_NAME --libraries=$FASTQ  --transcriptome=$DIR_DB --localcores=12 --chemistry=threeprime
