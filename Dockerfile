FROM python:3.6.4

RUN apt-get update && apt-get install -y \
    git \
    libxml2-dev \
    libxml2 \
    g++ \
    gcc \
    libxslt-dev \
    transmission-cli

ENV BASE_URL=https://thepiratebay.org/

COPY requirements.txt requirements.txt

RUN pip3 install -r ./requirements.txt

RUN mkdir -p /opt/thepiratebay /media/plex
WORKDIR /opt/thepiratebay

COPY . .

RUN ["chmod", "+x", "entrypoint.sh"]

ENTRYPOINT ["./entrypoint.sh"]
