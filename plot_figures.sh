#!/usr/bin/env bash

for file in ./data/results/means_of_results/ALS-Bias/Synthetic/synthetic_subject_types/plot.gnplt ./data/results/means_of_results/ALS-Bias/FS-100files/plot.gnplt ./data/results/means_of_results/ALS-Bias/PreFreeSurfer/plot.gnplt ./data/results/means_of_results/ALS/Synthetic/synthetic_subject_types/plot.gnplt ./data/results/means_of_results/ALS/FS-100files/plot.gnplt ./data/results/means_of_results/ALS/PreFreeSurfer/plot.gnplt ./data/results/roc/plot.gnplt ./data/results/means_of_results/ALS/Synthetic/8type-RFNU-Differ-Num-Factors/plot.gnplt ./data/results/means_of_results/ALS/Synthetic/8type-RFNU-Differ-Num-Iterations-rank50/plot-iteration.gnplt ./data/results/latent-factors/itemFactor-plot-3d.gnplt  ./data/results/latent-factors/userFactor-plot-3d.gnplt
do
  dir=$(dirname $file)
  base=$(basename $file)
  (cd ${dir}; gnuplot $base)
done
