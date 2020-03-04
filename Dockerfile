FROM python:3.7-alpine
LABEL author="Nima Khodabandelou"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app app/
#ADD . /app/

RUN adduser -D user
USER user