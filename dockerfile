FROM python:3.8-slim-buster
WORKDIR /app
RUN apt update
RUN apt install wget -y
COPY app_v1_pf /app
RUN ls -l /app

RUN pip3 install --no-cache-dir -r requirements.txt
CMD python3 app.py
