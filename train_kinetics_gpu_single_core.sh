torchrun --nproc_per_node=1 train_mp_gpu.py \
  --config_file_path config/main.yaml \
  --dataset kinetics \
  --batches_per_epoch 10 \
  --num_epochs 1 \
  --batch_size 16 \
  --learning_rate 1e-5
