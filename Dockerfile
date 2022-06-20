# pull official base image
FROM python:3.9.6-alpine

# Install postgres client
RUN apk update
RUN apk add postgresql-dev gcc python3-dev musl-dev

#maintainer
LABEL Author="Luc"

# set work directory
RUN mkdir /Python-OC-Lettings-FR
WORKDIR /Python-OC-Lettings-FR
COPY . .

# set environment variables
# means Python will not try to write .pyc files
ENV PYTHONDONTWRITEBYTECODE=1
# ensures our console output is not buffered by Docker
ENV PYTHONUNBUFFERED=1

# Copy the requirements.txt file
COPY ./requirements_docker.txt ./requirements.txt

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements_docker.txt


# Create a user that can run your container
RUN adduser -D user
USER user