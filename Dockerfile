from python:3.8-buster

COPY requirements.txt /tmp/requirements.txt
RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt && rm -f /tmp/requirements.txt

COPY . /app
WORKDIR /app

