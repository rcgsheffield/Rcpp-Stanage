#!/bin/bash
#SBATCH --job-name="R C++ parallel example"
#SBATCH --cpus-per-task=2
#SBATCH --time=00:00:10
#SBATCH --mem=512M
set -e

# This is a HPC job script.

# Usage:
# sbatch job.sh

# Load the R module
# https://docs.hpc.shef.ac.uk/en/latest/stanage/software/apps/r.html
module load R/4.4.1-foss-2022b

script_path="main.R"

R CMD BATCH "$script_path" "$script_path.${SLURM_JOB_ID}.out"
