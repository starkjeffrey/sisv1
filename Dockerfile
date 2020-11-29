FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /PUCSR_SISv1
WORKDIR /PUCSR_SISv1
COPY ./PUCSR_SISv1 /PUCSR_SISv1

RUN adduser -D user
USER user