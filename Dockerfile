FROM nvcr.io/nvidia/tritonserver:25.05-vllm-python-py3

RUN pip config set global.index-url https://mirror.nju.edu.cn/pypi/web/simple
RUN pip install lmcache
