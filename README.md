# Population_Genomics
Conversion of Chromosome names in VCF file

# Background
This script was created for the renaming of Chromosomes in VCF file. The VCF file generated in this project stored information on structural variants present in Human Whole Genome Sequence. For creating the Joint VCF file, fastq files of inidividuals from South Asian Subpopulation were retrieved from the 1000 Genomes Project Phase 3. These fastq files were preprocessed to generate BAM files and those BAM files were mapped to Human reference Genome GRCH38.p14 which was collected from https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000001405.40/. The chromosome names in the BAM file were named according to UCSC Genome browser chromosome naming convention (Refer: https://genome.ucsc.edu/cgi-bin/hgTracks?db=hg19&chromInfoPage= ).
