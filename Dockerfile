FROM python:latest
WORKDIR /app

RUN apt update && apt upgrade -y
RUN apt install ffmpeg -y

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD bash start.sh
