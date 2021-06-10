FROM python:3.9-slim-buster

RUN apt update
RUN apt -y install git
RUN apt -y install gcc
RUN pip install --upgrade pip

RUN mkdir /docker-foundations

WORKDIR /docker-foundations
ADD requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt