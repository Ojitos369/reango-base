FROM python:3.12
RUN apt-get update && apt-get upgrade -y
# Install here dependencies

ENV APPHOME=/usr/src/app/
WORKDIR $APPHOME
ENV PYTHONUNBUFFERED 1
COPY . $APPHOME

RUN pip install -r requirements.txt

# docker network create rng
# docker network connect rng rng-py
# Connect nerwork if you need it
# docker network connect rng rng
# docker start rng-py
# docker rm -f rng-py && docker image rm rng-web && docker compose up -d
