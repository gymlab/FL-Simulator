#!/bin/bash
export CUDA_VISIBLE_DEVICES=3
DATASET=CIFAR10

python train.py --dataset ${DATASET} --model ResNet18 --split-rule Dirichlet --project dev_quant3 \
--split-coef 0.6 --active-ratio 0.05 --total-client 100 --method FedSMOO --save-model