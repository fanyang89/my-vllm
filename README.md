# vLLM x LMCache x RTX 50~

# Usage

```bash
# pull the image
docker pull docker.io/fuis/tritonserver:25.05-vllm-python-py3-lmcache

# start LMCache
uv sync; task lmcache

# start vLLM
task vllm

# test if it works
task test
```

# Build LMCache

```bash
git clone https://github.com/LMCache/LMCache.git
cd LMCache
git checkout -b v0.3.0 v0.3.0

# Edit two files
# requirements/build.txt
-torch==2.7.0
+torch

# requirements/common.txt
-torch==2.7.0
+torch
```

```bash
docker run -it --rm --gpus all --ipc=host --net=host \
--ulimit memlock=-1 --ulimit stack=67108864 \
-e CUDA_VISIBLE_DEVICES=0 \
-w $(pwd) \
-v $(pwd):$(pwd) \
nvcr.io/nvidia/tritonserver:25.05-vllm-python-py3 \
bash -l
```

Then build:

```bash
export TORCH_CUDA_ARCH_LIST="7.5;8.0;8.6;9.0;10.0;12.0+PTX"
python3 setup.py bdist_wheel
```

# Build docker image

```bash
task docker
```
