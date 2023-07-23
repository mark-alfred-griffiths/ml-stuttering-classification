#!/bin/bash -l
#SBATCH -c 10
#SBATCH --mem=10GB
#SBATCH --job-name=log_reg
#SBATCH --partition=partition-1
#SBATCH --nodes=1
#SBATCH --output=$log/ml_stuttering_project/core_analysis/preprocessing/preprocessing_phase_two/vae_rnn_autoencoder_pipeline/rnn_vae_hyperbanding/rnn_vae_hyperbanding-%j.output
#SBATCH --error=$log/ml_stuttering_project/core_analysis/preprocessing/preprocessing_phase_two/vae_rnn_autoencoder_pipeline/rnn_vae_hyperbanding/rnn_vae_hyperbanding-%j.error

wd=$modelling/ml_stuttering_project/core_analysis/preprocessing/preprocessing_phase_two/vae_rnn_autoencoder_pipeline/rnn_vae_hyperbanding

source /etc/bash.bashrc
eval "$(conda shell.bash hook)"
conda activate python3710
cd $wd || exit
python3 run_variational_autoencoder.py





