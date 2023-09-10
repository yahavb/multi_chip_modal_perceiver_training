## Multi-Modal Perceiver IO Training Scripts

### Dataset and environment setup
```
sudo apt update 
sudo apt-get install python3-pip
sudo apt install python3-virtualenv
sudo apt install unzip

virtualenv env
source env/bin/activate

pip install -r requirements.txt
pip install --force-reinstall --no-deps protobuf==3.20.0

mkdir -p ~/examples_datasets/kinetics
pushd ~/examples_datasets/kinetics
aws s3 cp --recursive --no-progress s3://perceiver-trainium-test/Kinetics/train/ ./train
aws s3 cp --recursive --no-progress s3://perceiver-trainium-test/Kinetics/val/ ./val
popd
```

### Run Training Script on TRN
```
# Preprocess and cache the dataset by running with a single device (only need to run once)
./train_kinetics_trn_bf16_single_core.sh

# Run the actual script
./compile_kinetics_trn_bf16.sh && ./train_kinetics_trn_bf16.sh
```

### Run Training Script on GPU
```
# Preprocess and cache the dataset by running with a single device (only need to run once)
./train_kinetics_gpu_single_core.sh 

# Run the actual script
./train_kinetics_gpu.sh 
```

# multi_chip_modal_perceiver_training
