# My Dockerfile

FROM python:3.8-alpine

RUN mkdir /app
RUN pip install --upgrade pip
RUN pip install flask
RUN apk add redis

WORKDIR /app

COPY my_script.py my_script.py

EXPOSE 8080

LABEL maintainer="Your Name <your.email@your_domain.com>"

CMD sh
