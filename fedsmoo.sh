#!/bin/bash
export CUDA_VISIBLE_DEVICES=2
DATASET=CIFAR100

python train.py --non-iid --dataset ${DATASET} --model ResNet18 --split-rule Dirichlet \
--split-coef 0.3 --active-ratio 0.05 --total-client 100 --method FedSMOO