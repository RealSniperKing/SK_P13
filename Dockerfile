# pull official base image
FROM python:3.9.1
RUN python --version

# Install postgres client
# RUN apk update
# RUN apk add postgresql-dev gcc python3-dev musl-dev
# RUN apk --update add postgresql-client
RUN sudo apt-get update
RUN sudo apt-get install postgresql-client
RUN psql --version
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

# Install Heroku
#RUN apk update && apk upgrade && apk add curl
#RUN curl https://cli-assets.heroku.com/install.sh | sh
#RUN apk add npm

# Create a user that can run your container
RUN adduser -D user
USER user

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku
#CMD gunicorn --bind 0.0.0.0:$PORT wsgi

# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh


# FROM postgres:buster
# COPY docker-entrypoint-initdb.d/init.sql /docker-entrypoint-initdb.d/

#CMD ["docker-entrypoint.sh", "postgres"]

#COPY docker-entrypoint-initdb.d/init.sql /docker-entrypoint-initdb.d
#RUN chmod a+r /docker-entrypoint-initdb.d/*