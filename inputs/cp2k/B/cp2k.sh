#!/bin/sh
#SBATCH -N 1
#SBATCH -n 32
#SBATCH --partition=cp1
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --job-name=cp2k 
#SBATCH --export=ALL

module purge
module load cp2k/2025.1-icc21.3-IMPI2021.3-all

export OMP_NUM_THREADS=1
cd $SLURM_SUBMIT_DIR

# 自动查找输入文件
INP_FILE=$(ls *.inp 2>/dev/null | head -n 1)
if [ -z "$INP_FILE" ]; then
    echo "错误：当前目录下没有找到 .inp 文件！"
    exit 1
fi
echo "自动使用输入文件：$INP_FILE"

mpirun -np $SLURM_NTASKS cp2k.psmp "$INP_FILE" | tee result.out