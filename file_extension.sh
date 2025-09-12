#!/bin/bash
# Informatics_573.sh
# Author: Jnana Deepthi Vishnumolakala
# Date: 13th September 2025
# Description: This script downloads all secondary assemblies for human chromosome 1
# from UCSC, unzips them, and creates a summary file with file info and first 10 lines.

# 1. Navigate to home directory
cd ~

# 2. Create and navigate to Informatics_573 directory
mkdir -p Informatics_573
cd Informatics_573

# 3. Download all secondary assemblies except chr1.fa.gz
wget --timestamping ftp://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr1_*.fa.gz

# 4. Unzip all downloaded files
for file in *.fa.gz; do
    gunzip -k "$file"  # -k keeps the original gz file
done

# 5. Create an empty data_summary.txt file
touch data_summary.txt

# 6. Append detailed information (file name, size, permissions) to summary
ls -lh >> data_summary.txt

# 7. Append the first 10 lines of each chromosome 1 assembly
for file in *.fa; do
    echo "----- First 10 lines of $file -----" >> data_summary.txt
    head -n 10 "$file" >> data_summary.txt
done

# 8. Append assembly name and total number of lines
for file in *.fa; do
    echo "----- $file total lines -----" >> data_summary.txt
    wc -l "$file" >> data_summary.txt
done

echo "Script completed. data_summary.txt created in $(pwd)"

