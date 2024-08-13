FROM python:3.12-alpine3.19

LABEL maintainer="boris.tikhonov.21@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR app/

RUN apk update \
    && apk add --no-cache \
    postgresql-dev gcc python3-dev musl-dev


COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .