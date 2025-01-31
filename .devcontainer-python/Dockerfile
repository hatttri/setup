FROM python:slim

COPY requirements.txt /tmp/requirements.txt

RUN apt -y update
RUN apt -y upgrade
RUN apt -y install git

RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements.txt