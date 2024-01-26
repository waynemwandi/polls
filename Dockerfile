## Add OS image with Python 
FROM python:3.11.7-bookworm

## Python output is sent to container logs
ENV PYTHONBUFFERED=1

## Create working directory
WORKDIR /polls_django

## Copy requirements 
COPY requirements.txt requirements.txt

## Run requirements
RUN pip3 install -r requirements.txt

## Copy project files to working directory
COPY . .

## Run Django app
CMD python manage.py runserver 0.0.0.0:8000

# MySQL