FROM nvcr.io/nvidia/tritonserver:25.05-vllm-python-py3

# configure pypi mirror
RUN pip config set global.index-url https://mirror.nju.edu.cn/pypi/web/simple

# install lmcache
COPY lmcache-0.2.1-cp312-cp312-linux_x86_64.whl /tmp/
RUN pip install /tmp/lmcache-0.2.1-cp312-cp312-linux_x86_64.whl && \
rm -f /tmp/lmcache-0.2.1-cp312-cp312-linux_x86_64.whl
