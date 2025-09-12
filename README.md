# Human_Chr1_Assembly_09_10

A Bash script to download and summarize secondary human chromosome 1 assemblies from UCSC Genome Browser.

Programmer: Jnana Deepthi Vishnumolakala
Language: Bash (version 3.2.57 on macOS)
Date: September 13, 2025

Description:
Downloads all secondary assemblies for human chromosome 1 (excluding chr1.fa.gz), unzips them, and creates a summary file (data_summary.txt) with file details, first 10 lines, and total line counts.

## Required Software:

bash (pre-installed on macOS)

wget (install via Homebrew on macOS; use WSL on Windows)

gunzip (pre-installed on macOS; use WSL on Windows)

head (pre-installed on macOS; PowerShell alternative: Get-Content <file> -TotalCount 10)

## Instructions to Run:

Download the script (file_extension.sh)

Make it executable: chmod +x file_extension.sh

Run: ./file_extension.sh

Check results: cd ~/Informatics_573 and cat data_summary.txt

## Instructions to Run (Windows):

Use Git Bash or WSL

Install wget and gunzip

Download the script (file_extension.sh)

Run in Bash: chmod +x file_extension.sh && ./file_extension.sh

Check results: cat ~/Informatics_573/data_summary.txt

## Files Created:

Informatics_573/ – directory with downloaded chromosome 1 assemblies

data_summary.txt – summary file with file info, first 10 lines, and total lines
