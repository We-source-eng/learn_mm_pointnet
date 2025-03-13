CUDA_VISIBLE_DEVICES=0 python -u train.py \
--learning_rate 0.00005 \
--model MM_PCQA \
--batch_size  10 \
--database SJTU  \
--data_dir_2d /home/zzc/vqa_pc/database/sjtu_2d/ \
--data_dir_pc /home/zzc/3dqa/pointnet2/database/sjtu_patch_2048/ \
--loss l2rank \
--num_epochs 50 \
--k_fold_num 9 \
>> logs/sjtu_mmpcqa.log


CUDA_VISIBLE_DEVICES=0 python -u train.py \
--learning_rate 0.00005 \
--model MM_PCQA \
--batch_size  10 \
--database WPC  \
--data_dir_2d /DATA/zzc/3dqa/wpc/wpc_6face/ \
--data_dir_pc /DATA/zzc/3dqa/wpc/wpc_patch_2048/ \
--loss l2rank \
--num_epochs 50 \
--k_fold_num 5 \
>> logs/wpc_mmpcqa.log

CUDA_VISIBLE_DEVICES=0 python -u train.py \
--learning_rate 0.00005 \
--model MM_PCQA \
--batch_size  10 \
--database WPC2.0  \
--data_dir_2d /DATA/zzc/3dqa/wpc2.0/wpc2.0_6face/ \
--data_dir_pc /DATA/zzc/3dqa/wpc2.0/wpc2.0_patch_2048/ \
--loss l2rank \
--num_epochs 50 \
--k_fold_num 4 \
>> logs/wpc2.0_mmpcqa.log



