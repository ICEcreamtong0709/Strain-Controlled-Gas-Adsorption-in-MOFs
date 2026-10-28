#!/bin/bash
#SBATCH --job-name=gpumd
#SBATCH --partition=gpu
#SBATCH --nodelist=thaihui-v100
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --gres=gpu:1
#SBATCH --time=7-00:00:00
#SBATCH --mem=8G
#SBATCH --output=slurm-%x-%j.out
#SBATCH --error=slurm-%x-%j.err
source /etc/profile.d/modules.sh
module purge
module load gpumd/5.0
cd $SLURM_SUBMIT_DIR
# 手动指定空闲 GPU
# 提交前先用 nvidia-smi 查看哪张卡空闲
export CUDA_VISIBLE_DEVICES=3
echo "Job ID: $SLURM_JOB_ID"
echo "Running on node: $SLURMD_NODENAME"
echo "CUDA_VISIBLE_DEVICES=$CUDA_VISIBLE_DEVICES"
module list
which gpumd
nvidia-smi
gpumd > gpumd.log 2>&1