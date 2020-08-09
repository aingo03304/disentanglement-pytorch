#! /bin/sh

FILENAME=$(basename $0)
FILENAME="${FILENAME%.*}"
NAME=${1:-$FILENAME}

echo "name=$NAME"

python3 main.py \
--name=$NAME \
--alg=BetaVAE \
--controlled_capacity_increase=true \
--loss_terms=FactorVAE \
--dset_dir=./dataset/  \
--dset_name=dsprites_full \
--traverse_z=true \
--encoder=SimpleGaussianConv64 \
--decoder=SimpleConv64 \
--discriminator=SimpleDiscriminator \
--z_dim=8 \
--use_wandb=false \
--w_kld=1 \
--w_tc=1 \
--lr_G=0.002 \
--lr_scheduler=ReduceLROnPlateau \
--lr_scheduler_args mode=min factor=0.8 patience=0 min_lr=0.000001 \
--num_workers=1 \
--max_epoch=1



