# My Dockerfile
FROM python:3.8-alpine

RUN mkdir /app
RUN pip install --upgrade pip
RUN pip install flask

WORKDIR /app

COPY my_script.py my_script.py

LABEL maintainer="Your Name <your.email@your_domain.com" \
      version="1.0"

CMD sh