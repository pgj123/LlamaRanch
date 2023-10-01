# Base image is 
ARG BASE_IMAGE=junyeolyu/torch:2.0.1

FROM ${BASE_IMAGE}

WORKDIR /workspace
COPY . ${WORKDIR}

# Checkout two repository
#RUN git clone https://github.com/JunyeolYu/FasterTransformer_.git
#RUN git clone https://github.com/JunyeolYu/llama_v1.git

# Install torch-2.0
#RUN pip3 uninstall -y torch
#RUN pip3 install torch-2.0.0-cp310-cp310-linux_x86_64.whl

# Install requirements
RUN pip install datasets sentencepiece transformers fairscale fire

# Install Meta
WORKDIR /workspace/src/Meta
RUN pip install -e .
