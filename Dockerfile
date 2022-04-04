FROM python:3.9-alpine
MAINTAINER erge

ENV PYTHONUNBUFFERED 1

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ../_recipe-app-api/app /app

RUN adduser -D user
USER user
