#!/bin/bash
export CUDA_VISIBLE_DEVICES=3
DATASET=CIFAR10

python train.py --non-iid --dataset ${DATASET} --model ResNet18 --split-rule Dirichlet \
--split-coef 0.3 --active-ratio 0.05 --total-client 100 --method MoFedSAM