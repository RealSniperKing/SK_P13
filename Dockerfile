# pull official base image
FROM python:3.9.6-alpine

# Install postgres client
RUN apk add --update --no-cache postgresql-client

#maintainer
LABEL Author="Luc"

# set work directory
RUN mkdir /Python-OC-Lettings-FR
WORKDIR /Python-OC-Lettings-FR
COPY home /Python-OC-Lettings-FR
COPY lettings /Python-OC-Lettings-FR
COPY profiles /Python-OC-Lettings-FR
COPY manage.py /Python-OC-Lettings-FR
COPY setup.cfg /Python-OC-Lettings-FR

# set environment variables
# means Python will not try to write .pyc files
ENV PYTHONDONTWRITEBYTECODE=1
# ensures our console output is not buffered by Docker
ENV PYTHONUNBUFFERED=1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements_docker.txt .
RUN pip install -r requirements_docker.txt

# COPY . .