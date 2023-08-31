#!/bin/bash

#SBATCH --job-name="Python_test"
#SBATCH --time=00:00:10
#SBATCH --ntasks=10
#SBATCH --cpus-per-task=1
#SBATCH --partition=compute
#SBATCH --mem-per-cpu=1GB
#SBATCH --account=research-tpm-mas

module load 2023r1
module load openmpi
module load python
module load py-numpy
module load py-mpi4py

mpiexec -n 10 python -m mpi4py.futures my_model.py > py_test.log