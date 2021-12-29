#Lightest image of the python
FROM python:3.10-alpine
#Name of the maintainer
MAINTAINER Eftakhar Ahamad Zopper

#Name of the Environement
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r /requirements.txt


RUN mkdir /app
WORKDIR /app
COPY ./app /app


RUN adduser -D eftakhar
USER eftakhar
