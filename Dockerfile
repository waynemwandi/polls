FROM python:3.11.7

WORKDIR /app

ENV PYTHONBUFFERED=1

RUN pip install --upgrade pip

COPY ./requirements.txt .

RUN pip install -r requirements.txt

COPY . .