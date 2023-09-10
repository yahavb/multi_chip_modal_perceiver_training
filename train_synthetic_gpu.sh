torchrun --nproc_per_node=8 train_mp_gpu.py \
  --config_file_path config/main.yaml \
  --dataset synthetic \
  --batches_per_epoch 100 \
  --num_epochs 3 \
  --batch_size 16 \
  --learning_rate 1e-5
