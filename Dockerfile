FROM python:3.12-slim

COPY requirements.txt /tmp/requirements.txt

RUN pip install --no-cache-dir -r /tmp/requirements.txt

ARG USER=ope
RUN groupadd -g 1000 ${USER} && \
    useradd -m -s /bin/bash -u 1000 -g 1000 ${USER}
USER ${USER}

WORKDIR /home/${USER}/
