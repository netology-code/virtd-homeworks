FROM python:3.9-slim
WORKDIR /app

COPY ./passwordfile .

RUN echo "some command with password"

RUN rm -rf /tmp/passwordfile

RUN --mount=type=secret,id=env_sec cp /run/secrets/env_sec .


