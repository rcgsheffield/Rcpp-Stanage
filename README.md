# Rcpp test
Rcpp test for [Stanage](https://docs.hpc.shef.ac.uk/en/latest/stanage/index.html#gsc.tab=0) HPC at the University of Sheffield.

[R HPC documentation](https://docs.hpc.shef.ac.uk/en/latest/stanage/software/apps/r.html)

[High performance functions with Rcpp](http://adv-r.had.co.nz/Rcpp.html) in *Advanced R* by Hadley Wickham.

# Installation

Load the R module

```bash
module load R
```

Open the R shell

```bash
R
```

Install dependencies. When asked to create a personal package library, select "yes"

```R
install.packages(c("Rcpp", "RcppParallel"))
```

# Usage

Execute the HPC job using the SLURM batch job submission command [`sbatch`](https://slurm.schedmd.com/sbatch.html)

```bash
sbatch job.sh
```

Log files will be written to `*.out` files.
