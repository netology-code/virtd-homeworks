FROM python:3.9-slim as builder
WORKDIR /app

#Установка компилятора gcc
RUN apt-get update && \
    apt-get install -y --no-install-recommends gcc


RUN python -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

COPY requirements.txt ./
#авторизация для скачивания зависимостей из закрытых репозиториев
ARG ARG_PASSWORD=P@55w0rD
# Монтирование кеша pip с docker host
RUN --mount=type=cache,target=~/.cache/pip pip install -r requirements.txt



FROM python:3.9-alpine as worker
WORKDIR /app


RUN addgroup --system python && \
    adduser --system --disabled-password  --ingroup python python && chown python:python /app
USER python

COPY --chown=python:python --from=builder /app/venv ./venv
COPY --chown=python:python . .


ENV PATH="/app/venv/bin:$PATH"
CMD ["python", "main.py"]