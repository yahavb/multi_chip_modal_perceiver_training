XLA_USE_BF16=1 NEURON_CC_FLAGS='--retry_failed_compilation --internal-max-instruction-limit=10000000 --enable-experimental-O1 --internal-build-with-users --enable-saturate-infinity' neuron_parallel_compile torchrun train_mp_trn.py \
  --config_file_path config/main.yaml \
  --dataset kinetics \
  --num_workers 2 \
  --log_steps 10 \
  --max_steps 10 \
  --batch_size 1 \
  --lr 1e-5