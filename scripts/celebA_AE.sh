#! /bin/sh

FILENAME=$(basename $0)
FILENAME="${FILENAME%.*}"
NAME=${1:-$FILENAME}

echo "name=$NAME"

python3 main.py \
--name=$NAME \
--alg=AE \
--dset_dir=./dataset/ \
--dset_name=celebA \
--encoder=SimpleConv64 \
--decoder=SimpleConv64 \
--z_dim=32 \
--use_wandb=false \
--max_epoch=1