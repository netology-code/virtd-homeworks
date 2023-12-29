FROM python:3.9-slim
WORKDIR /app

RUN --mount=type=secret,id=env_sec cat /run/secrets/env_sec && cp /run/secrets/env_sec .
