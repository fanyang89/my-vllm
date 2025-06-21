FROM nvcr.io/nvidia/tritonserver:25.05-vllm-python-py3

# RUN pip config set global.index-url https://mirror.nju.edu.cn/pypi/web/simple

COPY lmcache-0.0.0-cp312-cp312-linux_x86_64.whl /tmp/
RUN pip install /tmp/lmcache-0.0.0-cp312-cp312-linux_x86_64.whl && \
rm -f /tmp/lmcache-0.0.0-cp312-cp312-linux_x86_64.whl
