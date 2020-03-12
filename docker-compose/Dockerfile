# Web image

FROM python:3.8-alpine

RUN mkdir /web && \ 
    pip install --upgrade pip && \
    pip install flask

WORKDIR /web

COPY app.py app.py

EXPOSE 5000

CMD flask run --host=0.0.0.0 --port=5000
