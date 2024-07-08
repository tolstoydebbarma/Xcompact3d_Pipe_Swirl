#!/bin/sh
#SBATCH --partition=large       # Partition or queue name
#SBATCH --nodes=4                    # Number of nodes
#SBATCH --time=02-00:00:00
#SBATCH --ntasks=192                  # Total processes per node
#SBATCH --job-name=Pipe_Swirl         # Name of application
#SBATCH --error=aaa.%j.err       # Name of the error file
#SBATCH --output=aaa.%j.out      # Name of the output file
#SBATCH --mail-user=tolstoyd22@iitk.ac.in
#SBATCH --mail-type=END,FAIL,REQUEUE

module load compiler/intel/2019.5.281

mpirun -np 192 ../../xcompact3d > aaaLOG.$SLURM_JOB_ID.log