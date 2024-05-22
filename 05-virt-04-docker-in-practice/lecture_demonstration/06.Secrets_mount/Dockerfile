FROM python:3.9-slim
WORKDIR /app

RUN apt update && apt install -y git && mkdir -p ~/.ssh/ &&ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=secret,id=env_sec cp /run/secrets/env_sec .

RUN --mount=type=ssh  git clone git@github.com:netology-code/shvirtd-example-python.git

